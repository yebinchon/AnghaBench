
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {int dummy; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int subsys_register (struct bus_type*,struct attribute_group const**,int *) ;
 TYPE_1__* system_kset ;

int subsys_system_register(struct bus_type *subsys,
      const struct attribute_group **groups)
{
 return subsys_register(subsys, groups, &system_kset->kobj);
}
