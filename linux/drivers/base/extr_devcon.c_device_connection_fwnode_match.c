
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_connection {int id; int fwnode; } ;
typedef void device ;
struct bus_type {int dummy; } ;


 void* bus_find_device_by_fwnode (struct bus_type*,int ) ;
 int dev_name (void*) ;
 struct bus_type** generic_match_buses ;
 int put_device (void*) ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static void *device_connection_fwnode_match(struct device_connection *con)
{
 struct bus_type *bus;
 struct device *dev;

 for (bus = generic_match_buses[0]; bus; bus++) {
  dev = bus_find_device_by_fwnode(bus, con->fwnode);
  if (dev && !strncmp(dev_name(dev), con->id, strlen(con->id)))
   return dev;

  put_device(dev);
 }
 return ((void*)0);
}
