
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;


 int bus_attr_drivers_autoprobe ;
 int bus_attr_drivers_probe ;
 int bus_remove_file (struct bus_type*,int *) ;

__attribute__((used)) static void remove_probe_files(struct bus_type *bus)
{
 bus_remove_file(bus, &bus_attr_drivers_autoprobe);
 bus_remove_file(bus, &bus_attr_drivers_probe);
}
