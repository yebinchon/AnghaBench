
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct img_ascii_lcd_ctx {int timer; } ;


 int del_timer_sync (int *) ;
 int dev_attr_message ;
 int device_remove_file (int *,int *) ;
 struct img_ascii_lcd_ctx* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int img_ascii_lcd_remove(struct platform_device *pdev)
{
 struct img_ascii_lcd_ctx *ctx = platform_get_drvdata(pdev);

 device_remove_file(&pdev->dev, &dev_attr_message);
 del_timer_sync(&ctx->timer);
 return 0;
}
