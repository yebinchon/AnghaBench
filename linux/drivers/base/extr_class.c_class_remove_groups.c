
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct class {TYPE_2__* p; } ;
struct attribute_group {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;


 void sysfs_remove_groups (int *,struct attribute_group const**) ;

__attribute__((used)) static void class_remove_groups(struct class *cls,
    const struct attribute_group **groups)
{
 return sysfs_remove_groups(&cls->p->subsys.kobj, groups);
}
