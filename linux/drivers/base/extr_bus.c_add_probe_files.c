
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;


 int bus_attr_drivers_autoprobe ;
 int bus_attr_drivers_probe ;
 int bus_create_file (struct bus_type*,int *) ;
 int bus_remove_file (struct bus_type*,int *) ;

__attribute__((used)) static int add_probe_files(struct bus_type *bus)
{
 int retval;

 retval = bus_create_file(bus, &bus_attr_drivers_probe);
 if (retval)
  goto out;

 retval = bus_create_file(bus, &bus_attr_drivers_autoprobe);
 if (retval)
  bus_remove_file(bus, &bus_attr_drivers_probe);
out:
 return retval;
}
