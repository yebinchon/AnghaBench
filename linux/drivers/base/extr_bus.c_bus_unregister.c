
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {TYPE_1__* p; int bus_groups; scalar_t__ dev_root; int name; } ;
struct TYPE_2__ {int subsys; int * devices_kset; int * drivers_kset; } ;


 int bus_attr_uevent ;
 int bus_remove_file (struct bus_type*,int *) ;
 int bus_remove_groups (struct bus_type*,int ) ;
 int device_unregister (scalar_t__) ;
 int kset_unregister (int *) ;
 int pr_debug (char*,int ) ;
 int remove_probe_files (struct bus_type*) ;

void bus_unregister(struct bus_type *bus)
{
 pr_debug("bus: '%s': unregistering\n", bus->name);
 if (bus->dev_root)
  device_unregister(bus->dev_root);
 bus_remove_groups(bus, bus->bus_groups);
 remove_probe_files(bus);
 kset_unregister(bus->p->drivers_kset);
 kset_unregister(bus->p->devices_kset);
 bus_remove_file(bus, &bus_attr_uevent);
 kset_unregister(&bus->p->subsys);
}
