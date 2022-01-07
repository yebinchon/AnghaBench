
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int BUG_ON (int) ;
 int dev_info (int *,char*) ;
 int iounmap (int ) ;
 int l2ctlr ;
 int remove_cache_sram (struct platform_device*) ;

__attribute__((used)) static int mpc85xx_l2ctlr_of_remove(struct platform_device *dev)
{
 BUG_ON(!l2ctlr);

 iounmap(l2ctlr);
 remove_cache_sram(dev);
 dev_info(&dev->dev, "MPC85xx L2 controller unloaded\n");

 return 0;
}
