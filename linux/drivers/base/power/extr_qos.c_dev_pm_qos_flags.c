
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct device {TYPE_1__ power; } ;
typedef int s32 ;
typedef enum pm_qos_flags_status { ____Placeholder_pm_qos_flags_status } pm_qos_flags_status ;


 int __dev_pm_qos_flags (struct device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum pm_qos_flags_status dev_pm_qos_flags(struct device *dev, s32 mask)
{
 unsigned long irqflags;
 enum pm_qos_flags_status ret;

 spin_lock_irqsave(&dev->power.lock, irqflags);
 ret = __dev_pm_qos_flags(dev, mask);
 spin_unlock_irqrestore(&dev->power.lock, irqflags);

 return ret;
}
