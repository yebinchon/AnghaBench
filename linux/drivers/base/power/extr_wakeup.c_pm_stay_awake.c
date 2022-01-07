
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int wakeup; } ;
struct device {TYPE_1__ power; } ;


 int __pm_stay_awake (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pm_stay_awake(struct device *dev)
{
 unsigned long flags;

 if (!dev)
  return;

 spin_lock_irqsave(&dev->power.lock, flags);
 __pm_stay_awake(dev->power.wakeup);
 spin_unlock_irqrestore(&dev->power.lock, flags);
}
