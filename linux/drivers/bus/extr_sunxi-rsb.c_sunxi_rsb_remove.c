
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb {int clk; int rstc; int dev; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int device_for_each_child (int ,int *,int ) ;
 struct sunxi_rsb* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int sunxi_rsb_remove_devices ;

__attribute__((used)) static int sunxi_rsb_remove(struct platform_device *pdev)
{
 struct sunxi_rsb *rsb = platform_get_drvdata(pdev);

 device_for_each_child(rsb->dev, ((void*)0), sunxi_rsb_remove_devices);
 reset_control_assert(rsb->rstc);
 clk_disable_unprepare(rsb->clk);

 return 0;
}
