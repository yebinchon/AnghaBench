
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {scalar_t__ enabled; } ;
struct TYPE_2__ {int (* disable ) (struct cpuidle_driver*,struct cpuidle_device*) ;} ;


 TYPE_1__* cpuidle_curr_governor ;
 struct cpuidle_driver* cpuidle_get_cpu_driver (struct cpuidle_device*) ;
 int cpuidle_remove_device_sysfs (struct cpuidle_device*) ;
 int enabled_devices ;
 int stub1 (struct cpuidle_driver*,struct cpuidle_device*) ;

void cpuidle_disable_device(struct cpuidle_device *dev)
{
 struct cpuidle_driver *drv = cpuidle_get_cpu_driver(dev);

 if (!dev || !dev->enabled)
  return;

 if (!drv || !cpuidle_curr_governor)
  return;

 dev->enabled = 0;

 if (cpuidle_curr_governor->disable)
  cpuidle_curr_governor->disable(drv, dev);

 cpuidle_remove_device_sysfs(dev);
 enabled_devices--;
}
