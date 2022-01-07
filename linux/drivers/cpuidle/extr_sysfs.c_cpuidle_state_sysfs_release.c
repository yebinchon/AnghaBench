
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cpuidle_state_kobj {int kobj_unregister; } ;


 int complete (int *) ;
 struct cpuidle_state_kobj* kobj_to_state_obj (struct kobject*) ;

__attribute__((used)) static void cpuidle_state_sysfs_release(struct kobject *kobj)
{
 struct cpuidle_state_kobj *state_obj = kobj_to_state_obj(kobj);

 complete(&state_obj->kobj_unregister);
}
