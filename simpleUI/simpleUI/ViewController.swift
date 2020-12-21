//
//  ViewController.swift
//  simpleUI
//
//  Created by Jin Zhou on 12/20/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var backgroundcolor: UIColor!
    var textcolor: UIColor!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundcolor = view.backgroundColor
        textcolor = textLabel.textColor
    }


    @IBAction func DidTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text = "Goodbye!!"
        textLabel.text = textfield.text
        textfield.text = ""
        view.endEditing(true)
    }
    @IBAction func onreset(_ sender: Any) {
        textLabel.text = "Hello from Jin"
        textLabel.textColor = textcolor
        view.backgroundColor = backgroundcolor
    }
}

