//
//  LoginViewController.swift
//  Twitter
//
//  Created by 07elenazheng-@naver.com on 3/19/22.
//

import UIKit

class LoginViewController: UIViewController {
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton(_sender: Any) {
        
        let myUrl = "https://api.twitter.com/oauth/authorize?oauth_token"
        
        TwitterAPICaller.client?.login(url: myUrl, success:{
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }, failure: { (Error) in
            print("Could not log in!")
        })
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
