//
//  ViewController.swift
//  UIProgrammatically
//
//  Created by Lubos Ilcik on 25/10/2018.
//  Copyright © 2018 Touch4It s.r.o. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        button.setTitle("Touch Me", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.red, for: .highlighted)
        button.backgroundColor = .gray
        button.sizeToFit()
        
        view.addSubview(button)
        print("")
        
        button.addTarget(self, action: #selector(onButtonTapped(_:)), for: .touchUpInside)
        
    }

    @objc func onButtonTapped(_ sender: UIButton) {
        print("onButtonTapped")
    }

}

