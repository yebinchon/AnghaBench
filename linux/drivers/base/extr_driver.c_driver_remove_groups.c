
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int sysfs_remove_groups (int *,struct attribute_group const**) ;

void driver_remove_groups(struct device_driver *drv,
     const struct attribute_group **groups)
{
 sysfs_remove_groups(&drv->p->kobj, groups);
}
