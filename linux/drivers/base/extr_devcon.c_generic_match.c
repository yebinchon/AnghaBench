
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_connection {int * endpoint; scalar_t__ fwnode; } ;
typedef void device ;
struct bus_type {int dummy; } ;


 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 void* bus_find_device_by_name (struct bus_type*,int *,int ) ;
 void* device_connection_fwnode_match (struct device_connection*) ;
 struct bus_type** generic_match_buses ;

__attribute__((used)) static void *generic_match(struct device_connection *con, int ep, void *data)
{
 struct bus_type *bus;
 struct device *dev;

 if (con->fwnode)
  return device_connection_fwnode_match(con);

 for (bus = generic_match_buses[0]; bus; bus++) {
  dev = bus_find_device_by_name(bus, ((void*)0), con->endpoint[ep]);
  if (dev)
   return dev;
 }





 return ERR_PTR(-EPROBE_DEFER);
}
