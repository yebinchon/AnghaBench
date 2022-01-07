
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpuidle_device {TYPE_1__** kobjs; } ;
struct TYPE_3__ {int kobj_unregister; int kobj; } ;


 int cpuidle_remove_s2idle_attr_group (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 int kobject_put (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static inline void cpuidle_free_state_kobj(struct cpuidle_device *device, int i)
{
 cpuidle_remove_s2idle_attr_group(device->kobjs[i]);
 kobject_put(&device->kobjs[i]->kobj);
 wait_for_completion(&device->kobjs[i]->kobj_unregister);
 kfree(device->kobjs[i]);
 device->kobjs[i] = ((void*)0);
}
