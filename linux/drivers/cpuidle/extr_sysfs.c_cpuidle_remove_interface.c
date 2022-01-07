
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int cpuidle_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void cpuidle_remove_interface(struct device *dev)
{
 sysfs_remove_group(&dev->kobj, &cpuidle_attr_group);
}
