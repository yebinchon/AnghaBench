
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bus_type {TYPE_2__* p; } ;
struct attribute_group {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;


 int sysfs_remove_groups (int *,struct attribute_group const**) ;

__attribute__((used)) static void bus_remove_groups(struct bus_type *bus,
         const struct attribute_group **groups)
{
 sysfs_remove_groups(&bus->p->subsys.kobj, groups);
}
