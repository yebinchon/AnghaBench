
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state_kobj {int kobj; int kobj_unregister; struct cpuidle_device* device; int * state_usage; int * state; } ;
struct cpuidle_driver {int state_count; int * states; } ;
struct cpuidle_device_kobj {int kobj; } ;
struct cpuidle_device {struct cpuidle_state_kobj** kobjs; int * states_usage; struct cpuidle_device_kobj* kobj_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int cpuidle_add_s2idle_attr_group (struct cpuidle_state_kobj*) ;
 int cpuidle_free_state_kobj (struct cpuidle_device*,int) ;
 struct cpuidle_driver* cpuidle_get_cpu_driver (struct cpuidle_device*) ;
 int init_completion (int *) ;
 int kfree (struct cpuidle_state_kobj*) ;
 int kobject_init_and_add (int *,int *,int *,char*,int) ;
 int kobject_uevent (int *,int ) ;
 int ktype_state_cpuidle ;
 struct cpuidle_state_kobj* kzalloc (int,int ) ;

__attribute__((used)) static int cpuidle_add_state_sysfs(struct cpuidle_device *device)
{
 int i, ret = -ENOMEM;
 struct cpuidle_state_kobj *kobj;
 struct cpuidle_device_kobj *kdev = device->kobj_dev;
 struct cpuidle_driver *drv = cpuidle_get_cpu_driver(device);


 for (i = 0; i < drv->state_count; i++) {
  kobj = kzalloc(sizeof(struct cpuidle_state_kobj), GFP_KERNEL);
  if (!kobj) {
   ret = -ENOMEM;
   goto error_state;
  }
  kobj->state = &drv->states[i];
  kobj->state_usage = &device->states_usage[i];
  kobj->device = device;
  init_completion(&kobj->kobj_unregister);

  ret = kobject_init_and_add(&kobj->kobj, &ktype_state_cpuidle,
        &kdev->kobj, "state%d", i);
  if (ret) {
   kfree(kobj);
   goto error_state;
  }
  cpuidle_add_s2idle_attr_group(kobj);
  kobject_uevent(&kobj->kobj, KOBJ_ADD);
  device->kobjs[i] = kobj;
 }

 return 0;

error_state:
 for (i = i - 1; i >= 0; i--)
  cpuidle_free_state_kobj(device, i);
 return ret;
}
