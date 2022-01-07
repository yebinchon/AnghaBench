
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {scalar_t__ registered; } ;


 int EBUSY ;
 int EINVAL ;
 int __cpuidle_device_init (struct cpuidle_device*) ;
 int __cpuidle_register_device (struct cpuidle_device*) ;
 int __cpuidle_unregister_device (struct cpuidle_device*) ;
 int cpuidle_add_sysfs (struct cpuidle_device*) ;
 int cpuidle_enable_device (struct cpuidle_device*) ;
 int cpuidle_install_idle_handler () ;
 int cpuidle_lock ;
 int cpuidle_remove_sysfs (struct cpuidle_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cpuidle_register_device(struct cpuidle_device *dev)
{
 int ret = -EBUSY;

 if (!dev)
  return -EINVAL;

 mutex_lock(&cpuidle_lock);

 if (dev->registered)
  goto out_unlock;

 __cpuidle_device_init(dev);

 ret = __cpuidle_register_device(dev);
 if (ret)
  goto out_unlock;

 ret = cpuidle_add_sysfs(dev);
 if (ret)
  goto out_unregister;

 ret = cpuidle_enable_device(dev);
 if (ret)
  goto out_sysfs;

 cpuidle_install_idle_handler();

out_unlock:
 mutex_unlock(&cpuidle_lock);

 return ret;

out_sysfs:
 cpuidle_remove_sysfs(dev);
out_unregister:
 __cpuidle_unregister_device(dev);
 goto out_unlock;
}
