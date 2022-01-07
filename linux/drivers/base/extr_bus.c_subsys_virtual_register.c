
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct bus_type {int dummy; } ;
struct attribute_group {int dummy; } ;


 int ENOMEM ;
 int subsys_register (struct bus_type*,struct attribute_group const**,struct kobject*) ;
 struct kobject* virtual_device_parent (int *) ;

int subsys_virtual_register(struct bus_type *subsys,
       const struct attribute_group **groups)
{
 struct kobject *virtual_dir;

 virtual_dir = virtual_device_parent(((void*)0));
 if (!virtual_dir)
  return -ENOMEM;

 return subsys_register(subsys, groups, virtual_dir);
}
