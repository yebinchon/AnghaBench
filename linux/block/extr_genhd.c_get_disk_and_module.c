
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct kobject {int dummy; } ;
struct gendisk {TYPE_1__* fops; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {struct module* owner; } ;


 TYPE_2__* disk_to_dev (struct gendisk*) ;
 struct kobject* kobject_get_unless_zero (int *) ;
 int module_put (struct module*) ;
 int try_module_get (struct module*) ;

struct kobject *get_disk_and_module(struct gendisk *disk)
{
 struct module *owner;
 struct kobject *kobj;

 if (!disk->fops)
  return ((void*)0);
 owner = disk->fops->owner;
 if (owner && !try_module_get(owner))
  return ((void*)0);
 kobj = kobject_get_unless_zero(&disk_to_dev(disk)->kobj);
 if (kobj == ((void*)0)) {
  module_put(owner);
  return ((void*)0);
 }
 return kobj;

}
