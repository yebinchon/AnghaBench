
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct cpuidle_device_kobj {int kobj; int kobj_unregister; struct cpuidle_device* dev; } ;
struct cpuidle_device {struct cpuidle_device_kobj* kobj_dev; scalar_t__ cpu; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 struct device* get_cpu_device (unsigned long) ;
 int init_completion (int *) ;
 int kfree (struct cpuidle_device_kobj*) ;
 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_uevent (int *,int ) ;
 int ktype_cpuidle ;
 struct cpuidle_device_kobj* kzalloc (int,int ) ;

int cpuidle_add_sysfs(struct cpuidle_device *dev)
{
 struct cpuidle_device_kobj *kdev;
 struct device *cpu_dev = get_cpu_device((unsigned long)dev->cpu);
 int error;
 if (!cpu_dev)
  return -ENODEV;

 kdev = kzalloc(sizeof(*kdev), GFP_KERNEL);
 if (!kdev)
  return -ENOMEM;
 kdev->dev = dev;
 dev->kobj_dev = kdev;

 init_completion(&kdev->kobj_unregister);

 error = kobject_init_and_add(&kdev->kobj, &ktype_cpuidle, &cpu_dev->kobj,
       "cpuidle");
 if (error) {
  kfree(kdev);
  return error;
 }

 kobject_uevent(&kdev->kobj, KOBJ_ADD);

 return 0;
}
