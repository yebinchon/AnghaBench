
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1111_dev {unsigned int skpcr_mask; int devid; } ;
struct sa1111 {int lock; scalar_t__ base; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* enable ) (int ,int ) ;int data; } ;


 scalar_t__ SA1111_SKPCR ;
 unsigned int readl_relaxed (scalar_t__) ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

int sa1111_enable_device(struct sa1111_dev *sadev)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);
 unsigned long flags;
 unsigned int val;
 int ret = 0;

 if (sachip->pdata && sachip->pdata->enable)
  ret = sachip->pdata->enable(sachip->pdata->data, sadev->devid);

 if (ret == 0) {
  spin_lock_irqsave(&sachip->lock, flags);
  val = readl_relaxed(sachip->base + SA1111_SKPCR);
  writel_relaxed(val | sadev->skpcr_mask, sachip->base + SA1111_SKPCR);
  spin_unlock_irqrestore(&sachip->lock, flags);
 }
 return ret;
}
