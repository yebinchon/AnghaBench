
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1111_dev {unsigned int skpcr_mask; int devid; } ;
struct sa1111 {TYPE_1__* pdata; int lock; scalar_t__ base; } ;
struct TYPE_2__ {int data; int (* disable ) (int ,int ) ;} ;


 scalar_t__ SA1111_SKPCR ;
 unsigned int readl_relaxed (scalar_t__) ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

void sa1111_disable_device(struct sa1111_dev *sadev)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&sachip->lock, flags);
 val = readl_relaxed(sachip->base + SA1111_SKPCR);
 writel_relaxed(val & ~sadev->skpcr_mask, sachip->base + SA1111_SKPCR);
 spin_unlock_irqrestore(&sachip->lock, flags);

 if (sachip->pdata && sachip->pdata->disable)
  sachip->pdata->disable(sachip->pdata->data, sadev->devid);
}
