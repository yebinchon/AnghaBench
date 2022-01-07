
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_depth; scalar_t__ runtime_status; int lock; int usage_count; } ;
struct device {TYPE_1__ power; } ;


 int EINVAL ;
 scalar_t__ RPM_ACTIVE ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pm_runtime_get_if_in_use(struct device *dev)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&dev->power.lock, flags);
 retval = dev->power.disable_depth > 0 ? -EINVAL :
  dev->power.runtime_status == RPM_ACTIVE
   && atomic_inc_not_zero(&dev->power.usage_count);
 spin_unlock_irqrestore(&dev->power.lock, flags);
 return retval;
}
