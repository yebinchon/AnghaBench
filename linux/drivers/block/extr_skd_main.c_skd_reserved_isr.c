
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {int lock; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int FIT_INT_RESERVED_MASK ;
 int FIT_INT_STATUS_HOST ;
 int IRQ_HANDLED ;
 int SKD_READL (struct skd_device*,int ) ;
 int SKD_WRITEL (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t skd_reserved_isr(int irq, void *skd_host_data)
{
 struct skd_device *skdev = skd_host_data;
 unsigned long flags;

 spin_lock_irqsave(&skdev->lock, flags);
 dev_dbg(&skdev->pdev->dev, "MSIX = 0x%x\n",
  SKD_READL(skdev, FIT_INT_STATUS_HOST));
 dev_err(&skdev->pdev->dev, "MSIX reserved irq %d = 0x%x\n", irq,
  SKD_READL(skdev, FIT_INT_STATUS_HOST));
 SKD_WRITEL(skdev, FIT_INT_RESERVED_MASK, FIT_INT_STATUS_HOST);
 spin_unlock_irqrestore(&skdev->lock, flags);
 return IRQ_HANDLED;
}
