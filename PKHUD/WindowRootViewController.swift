//
//  PKHUD.WindowRootViewController.swift
//  PKHUD
//
//  Created by Philip Kluz on 6/18/14.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit

/// Serves as a configuration relay controller, tapping into the main window's rootViewController settings.
internal class WindowRootViewController: UIViewController {
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            if let rootViewController = UIApplication.shared.delegate?.window??.rootViewController {
                return rootViewController.supportedInterfaceOrientations
            } else {
                return UIInterfaceOrientationMask.portrait
            }
        }
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return self.presentingViewController?.preferredStatusBarStyle ?? UIApplication.shared.statusBarStyle
        }
    }
    
    open override var prefersStatusBarHidden: Bool {
        get {
            return self.presentingViewController?.prefersStatusBarHidden ??
                UIApplication.shared.isStatusBarHidden
        }
    }
    
    open override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        get {
            if let rootViewController = UIApplication.shared.delegate?.window??.rootViewController {
                return rootViewController.preferredStatusBarUpdateAnimation
            } else {
                return .none
            }
        }
    }
    
    open override var shouldAutorotate: Bool {
        get {
            if let rootViewController = UIApplication.shared.delegate?.window??.rootViewController {
                return rootViewController.shouldAutorotate
            } else {
                return false
            }
        }
    }
}
