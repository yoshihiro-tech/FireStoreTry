//
//  LoginViewController.swift
//  FireStore
//
//  Created by Yoshihiro Uda on 2020/10/27.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }
  
    
    func login(){
        
        Auth.auth().signInAnonymously { (result, error) in
            
            let user = result?.user
            print(user)
            
            UserDefaults.standard.set(self.textField.text, forKey: "userName")
            
            let viewVC = self.storyboard?.instantiateViewController(identifier: "viewVC") as! ViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        }
        
        
    }
    
    @IBAction func done(_ sender: Any) {
        
        login()
    }
    

}
