
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_kobject {int * drivers_dir; } ;
struct device_driver {TYPE_1__* p; TYPE_2__* owner; } ;
struct TYPE_4__ {struct module_kobject mkobj; } ;
struct TYPE_3__ {struct module_kobject* mkobj; int kobj; } ;


 int kfree (char*) ;
 char* make_driver_name (struct device_driver*) ;
 int sysfs_remove_link (int *,char*) ;

void module_remove_driver(struct device_driver *drv)
{
 struct module_kobject *mk = ((void*)0);
 char *driver_name;

 if (!drv)
  return;

 sysfs_remove_link(&drv->p->kobj, "module");

 if (drv->owner)
  mk = &drv->owner->mkobj;
 else if (drv->p->mkobj)
  mk = drv->p->mkobj;
 if (mk && mk->drivers_dir) {
  driver_name = make_driver_name(drv);
  if (driver_name) {
   sysfs_remove_link(mk->drivers_dir, driver_name);
   kfree(driver_name);
  }
 }
}
