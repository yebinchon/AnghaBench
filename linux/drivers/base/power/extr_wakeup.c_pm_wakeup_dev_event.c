
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int wakeup; } ;
struct device {TYPE_1__ power; } ;


 int pm_wakeup_ws_event (int ,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pm_wakeup_dev_event(struct device *dev, unsigned int msec, bool hard)
{
 unsigned long flags;

 if (!dev)
  return;

 spin_lock_irqsave(&dev->power.lock, flags);
 pm_wakeup_ws_event(dev->power.wakeup, msec, hard);
 spin_unlock_irqrestore(&dev->power.lock, flags);
}
