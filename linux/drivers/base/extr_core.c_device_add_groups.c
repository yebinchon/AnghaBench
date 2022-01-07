
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct attribute_group {int dummy; } ;


 int sysfs_create_groups (int *,struct attribute_group const**) ;

int device_add_groups(struct device *dev, const struct attribute_group **groups)
{
 return sysfs_create_groups(&dev->kobj, groups);
}
