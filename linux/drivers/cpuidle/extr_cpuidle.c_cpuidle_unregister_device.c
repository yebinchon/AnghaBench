
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {scalar_t__ registered; } ;


 int __cpuidle_unregister_device (struct cpuidle_device*) ;
 int cpuidle_coupled_unregister_device (struct cpuidle_device*) ;
 int cpuidle_disable_device (struct cpuidle_device*) ;
 int cpuidle_pause_and_lock () ;
 int cpuidle_remove_sysfs (struct cpuidle_device*) ;
 int cpuidle_resume_and_unlock () ;

void cpuidle_unregister_device(struct cpuidle_device *dev)
{
 if (!dev || dev->registered == 0)
  return;

 cpuidle_pause_and_lock();

 cpuidle_disable_device(dev);

 cpuidle_remove_sysfs(dev);

 __cpuidle_unregister_device(dev);

 cpuidle_coupled_unregister_device(dev);

 cpuidle_resume_and_unlock();
}
