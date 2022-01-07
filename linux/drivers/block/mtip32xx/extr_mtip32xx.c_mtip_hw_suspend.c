
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {int port; scalar_t__ mmio; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 scalar_t__ HOST_CTL ;
 int HOST_IRQ_EN ;
 int dev_err (int *,char*) ;
 int mtip_deinit_port (int ) ;
 scalar_t__ mtip_standby_drive (struct driver_data*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_hw_suspend(struct driver_data *dd)
{




 if (mtip_standby_drive(dd) != 0) {
  dev_err(&dd->pdev->dev,
   "Failed standby-immediate command\n");
  return -EFAULT;
 }


 writel(readl(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
   dd->mmio + HOST_CTL);
 mtip_deinit_port(dd->port);

 return 0;
}
