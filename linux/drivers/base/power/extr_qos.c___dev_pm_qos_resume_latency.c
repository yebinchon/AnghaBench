
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct device {TYPE_1__ power; } ;
typedef int s32 ;


 int dev_pm_qos_raw_resume_latency (struct device*) ;
 int lockdep_assert_held (int *) ;

s32 __dev_pm_qos_resume_latency(struct device *dev)
{
 lockdep_assert_held(&dev->power.lock);

 return dev_pm_qos_raw_resume_latency(dev);
}
