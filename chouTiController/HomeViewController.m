//
//  HomeViewController.m
//  chouTiController
//
//  Created by kuanter on 16/4/5.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "HomeViewController.h"
#import "UIViewController+MMDrawerController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor yellowColor];
    UILabel*lable=[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    lable.text=@"homeVc";
    [self.view addSubview:lable];
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"vb" style:UIBarButtonItemStyleDone target:self action:@selector(leftDrawerButtonPress:)];
}

-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
