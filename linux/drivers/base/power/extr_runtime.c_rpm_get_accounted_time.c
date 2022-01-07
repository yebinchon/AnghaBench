
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lock; int active_time; int suspended_time; } ;
struct device {TYPE_1__ power; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_pm_runtime_accounting (struct device*) ;

__attribute__((used)) static u64 rpm_get_accounted_time(struct device *dev, bool suspended)
{
 u64 time;
 unsigned long flags;

 spin_lock_irqsave(&dev->power.lock, flags);

 update_pm_runtime_accounting(dev);
 time = suspended ? dev->power.suspended_time : dev->power.active_time;

 spin_unlock_irqrestore(&dev->power.lock, flags);

 return time;
}
