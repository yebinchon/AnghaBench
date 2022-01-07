
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int dummy; } ;


 int cpuidle_remove_driver_sysfs (struct cpuidle_device*) ;
 int cpuidle_remove_state_sysfs (struct cpuidle_device*) ;

void cpuidle_remove_device_sysfs(struct cpuidle_device *device)
{
 cpuidle_remove_driver_sysfs(device);
 cpuidle_remove_state_sysfs(device);
}
