//
//  ViewController.swift
//  SwiftyImageManipulation
//
//  Created by Sugam Kalra on 19/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgvAppirio: UIImageView!
    @IBOutlet weak var btnRotateClockwise: UIButton!
    @IBOutlet weak var btnRotateAnticlockwise: UIButton!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    /**
     Method to scale image
     
     @param sender - UIPinchGestureRecognizer
     
     @return nil
     */
    @IBAction func btnScaleImagePressed(_ sender: UIPinchGestureRecognizer)
    {
        imgvAppirio.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
    /**
     Method to rotate clockwise image
     
     @param sender - UIButton
     
     @return nil
     */
    @IBAction func btnRotateClockwiseImagePressed(_ sender: UIButton)
    {
        UIView.animate(withDuration: 2.0, animations: {
            self.imgvAppirio.transform = CGAffineTransform(rotationAngle: (180.0 * .pi) / 180.0)
            self.setEnableDisable(sender: sender)
        })
    }
    
    /**
     Method to rotate anticlockwise image
     
     @param sender - UIButton
     
     @return nil
     */
    @IBAction func btnRotateAnticlockwiseImagePressed(_ sender: UIButton)
    {
        UIView.animate(withDuration: 2.0, animations: {
            self.imgvAppirio.transform = CGAffineTransform(rotationAngle: (-360.0 * .pi) / 180.0)
            self.setEnableDisable(sender: sender)
        })
    }
    
    // MARK: Enable Disable Method
    
    /**
     Method to set enable disable buttons
     
     @param sender - UIButton
     
     @return nil
     */
    func setEnableDisable(sender:UIButton)
    {
        if sender.tag == 1 // Button Rotate Clockwise Pressed
        {
            btnRotateClockwise.isUserInteractionEnabled = false
            btnRotateAnticlockwise.isUserInteractionEnabled = true
            btnRotateClockwise.alpha = 0.5
            btnRotateAnticlockwise.alpha = 1.0
        }
        else if sender.tag == 2 // Button Rotate Anticlockwise Pressed
        {
            btnRotateAnticlockwise.isUserInteractionEnabled = false
            btnRotateClockwise.isUserInteractionEnabled = true
            btnRotateAnticlockwise.alpha = 0.5
            btnRotateClockwise.alpha = 1.0

        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

