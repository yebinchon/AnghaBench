
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int irq_safe; int usage_count; } ;
struct device {TYPE_1__ power; } ;


 int RPM_ASYNC ;
 int RPM_GET_PUT ;
 int atomic_dec_and_test (int *) ;
 int might_sleep_if (int) ;
 int rpm_suspend (struct device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int __pm_runtime_suspend(struct device *dev, int rpmflags)
{
 unsigned long flags;
 int retval;

 if (rpmflags & RPM_GET_PUT) {
  if (!atomic_dec_and_test(&dev->power.usage_count))
   return 0;
 }

 might_sleep_if(!(rpmflags & RPM_ASYNC) && !dev->power.irq_safe);

 spin_lock_irqsave(&dev->power.lock, flags);
 retval = rpm_suspend(dev, rpmflags);
 spin_unlock_irqrestore(&dev->power.lock, flags);

 return retval;
}
