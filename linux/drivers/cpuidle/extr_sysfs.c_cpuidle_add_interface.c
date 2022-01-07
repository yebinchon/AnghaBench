
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; } ;
struct TYPE_3__ {int attrs; } ;


 TYPE_1__ cpuidle_attr_group ;
 int cpuidle_switch_attrs ;
 int sysfs_create_group (int *,TYPE_1__*) ;
 scalar_t__ sysfs_switch ;

int cpuidle_add_interface(struct device *dev)
{
 if (sysfs_switch)
  cpuidle_attr_group.attrs = cpuidle_switch_attrs;

 return sysfs_create_group(&dev->kobj, &cpuidle_attr_group);
}
