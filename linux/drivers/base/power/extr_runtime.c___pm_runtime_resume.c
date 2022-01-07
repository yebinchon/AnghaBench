
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime_status; int lock; int usage_count; int irq_safe; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ RPM_ACTIVE ;
 int RPM_ASYNC ;
 int RPM_GET_PUT ;
 int atomic_inc (int *) ;
 int might_sleep_if (int) ;
 int rpm_resume (struct device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int __pm_runtime_resume(struct device *dev, int rpmflags)
{
 unsigned long flags;
 int retval;

 might_sleep_if(!(rpmflags & RPM_ASYNC) && !dev->power.irq_safe &&
   dev->power.runtime_status != RPM_ACTIVE);

 if (rpmflags & RPM_GET_PUT)
  atomic_inc(&dev->power.usage_count);

 spin_lock_irqsave(&dev->power.lock, flags);
 retval = rpm_resume(dev, rpmflags);
 spin_unlock_irqrestore(&dev->power.lock, flags);

 return retval;
}
