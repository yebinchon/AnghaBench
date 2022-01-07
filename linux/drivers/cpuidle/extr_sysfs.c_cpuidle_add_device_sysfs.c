
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int dummy; } ;


 int cpuidle_add_driver_sysfs (struct cpuidle_device*) ;
 int cpuidle_add_state_sysfs (struct cpuidle_device*) ;
 int cpuidle_remove_state_sysfs (struct cpuidle_device*) ;

int cpuidle_add_device_sysfs(struct cpuidle_device *device)
{
 int ret;

 ret = cpuidle_add_state_sysfs(device);
 if (ret)
  return ret;

 ret = cpuidle_add_driver_sysfs(device);
 if (ret)
  cpuidle_remove_state_sysfs(device);
 return ret;
}
