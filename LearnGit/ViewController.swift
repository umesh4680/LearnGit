//
//  ViewController.swift
//  LearnGit
//
//  Created by Intelllinum on 17/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // UI Setup for Navigation Bar
        self.setNavigationBarAppearance()
        
    }
    
    
    func setNavigationBarAppearance()
    {
        let newNavBarAppearance = UINavigationBarAppearance()
        
        // Configuring an opaque background
        newNavBarAppearance.configureWithOpaqueBackground()
        // or you can use:
        // newNavBarAppearance.configureWithTransparentBackground()
        // when you wanted a configuration with a transparent background
        
        // Navigation bar's background color
        newNavBarAppearance.backgroundColor = .purple
        
        // Navigation bar's title foreground color
        newNavBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Apply the appearance to different styles:
        navigationController?.navigationBar.scrollEdgeAppearance = newNavBarAppearance
        navigationController?.navigationBar.compactAppearance = newNavBarAppearance
        navigationController?.navigationBar.standardAppearance = newNavBarAppearance
        if #available(iOS 15.0, *) {
            navigationController?.navigationBar.compactScrollEdgeAppearance = newNavBarAppearance
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Added code for testing
        self.view.backgroundColor = .yellow
        self.navigationController?.navigationItem.titleView?.tintColor = .red
        
        self.navigationController?.navigationBar.barTintColor = .red
    }


}

