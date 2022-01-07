
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct device {TYPE_6__* bus; TYPE_3__* p; int kobj; } ;
struct bus_type {int dev_groups; TYPE_5__* p; int name; } ;
struct TYPE_13__ {TYPE_2__* p; } ;
struct TYPE_12__ {TYPE_4__* devices_kset; int klist_devices; } ;
struct TYPE_11__ {int kobj; } ;
struct TYPE_10__ {int knode_bus; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_9__ {TYPE_1__ subsys; } ;


 struct bus_type* bus_get (TYPE_6__*) ;
 int bus_put (TYPE_6__*) ;
 char* dev_name (struct device*) ;
 int device_add_groups (struct device*,int ) ;
 int device_remove_groups (struct device*,int ) ;
 int klist_add_tail (int *,int *) ;
 int pr_debug (char*,int ,char*) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

int bus_add_device(struct device *dev)
{
 struct bus_type *bus = bus_get(dev->bus);
 int error = 0;

 if (bus) {
  pr_debug("bus: '%s': add device %s\n", bus->name, dev_name(dev));
  error = device_add_groups(dev, bus->dev_groups);
  if (error)
   goto out_put;
  error = sysfs_create_link(&bus->p->devices_kset->kobj,
      &dev->kobj, dev_name(dev));
  if (error)
   goto out_groups;
  error = sysfs_create_link(&dev->kobj,
    &dev->bus->p->subsys.kobj, "subsystem");
  if (error)
   goto out_subsys;
  klist_add_tail(&dev->p->knode_bus, &bus->p->klist_devices);
 }
 return 0;

out_subsys:
 sysfs_remove_link(&bus->p->devices_kset->kobj, dev_name(dev));
out_groups:
 device_remove_groups(dev, bus->dev_groups);
out_put:
 bus_put(dev->bus);
 return error;
}
