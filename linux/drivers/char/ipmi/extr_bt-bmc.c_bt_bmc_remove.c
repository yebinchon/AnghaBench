
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct bt_bmc {int poll_timer; int irq; int miscdev; } ;


 int del_timer_sync (int *) ;
 struct bt_bmc* dev_get_drvdata (int *) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int bt_bmc_remove(struct platform_device *pdev)
{
 struct bt_bmc *bt_bmc = dev_get_drvdata(&pdev->dev);

 misc_deregister(&bt_bmc->miscdev);
 if (!bt_bmc->irq)
  del_timer_sync(&bt_bmc->poll_timer);
 return 0;
}
