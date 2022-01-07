
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct attribute_group {int dummy; } ;


 int sysfs_remove_groups (int *,struct attribute_group const**) ;

void device_remove_groups(struct device *dev,
     const struct attribute_group **groups)
{
 sysfs_remove_groups(&dev->kobj, groups);
}
