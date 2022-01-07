
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device_kobj {int kobj_unregister; int kobj; } ;
struct cpuidle_device {struct cpuidle_device_kobj* kobj_dev; } ;


 int kfree (struct cpuidle_device_kobj*) ;
 int kobject_put (int *) ;
 int wait_for_completion (int *) ;

void cpuidle_remove_sysfs(struct cpuidle_device *dev)
{
 struct cpuidle_device_kobj *kdev = dev->kobj_dev;

 kobject_put(&kdev->kobj);
 wait_for_completion(&kdev->kobj_unregister);
 kfree(kdev);
}
