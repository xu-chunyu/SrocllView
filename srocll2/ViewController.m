//
//  ViewController.m
//  srocll2
//
//  Created by 许 春雨 on 14-2-3.
//  Copyright (c) 2014年 许 春雨. All rights reserved.
//

#import "ViewController.h"

#define kCount 3
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGFloat w = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    for (int i = 0; i< kCount; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        
        // 1.设置frame
        imageView.frame = CGRectMake(i * w, 0, w, h);
        
        // 2.设置图片
        NSString *imgName = [NSString stringWithFormat:@"0%d.jpg", i + 1];
        imageView.image = [UIImage imageNamed:imgName];
        
        [_scrollView addSubview:imageView];
    }
    
    // height == 0 代表 禁止垂直方向滚动
    _scrollView.contentSize = CGSizeMake(kCount * w, 0);
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.bounces = NO;
    _scrollView.pagingEnabled = YES;

    
    //添加PageControl
    UIPageControl*pageControl =[[UIPageControl alloc]init];
    //位置
    pageControl.center=CGPointMake(w * 0.5, 475 - 15);
    pageControl.bounds=CGRectMake(0,0,150,40);
    pageControl.numberOfPages=3;//一共显示多少个圆点（多少页）
    //设置非选中页的圆点颜色
    pageControl.pageIndicatorTintColor=[UIColor grayColor];
    //设置选中页的圆点颜色
    pageControl.currentPageIndicatorTintColor=[UIColor whiteColor];
    
    //禁止默认的点击功能
    //pageControl.enabled= YES;
    
    [self.view addSubview:pageControl];
    pageControl = pageControl;


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tiaozhuan:(UIButton *)sender {
    
    }
@end
