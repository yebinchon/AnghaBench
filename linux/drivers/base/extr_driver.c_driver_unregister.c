
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int groups; int p; } ;


 int WARN (int,char*) ;
 int bus_remove_driver (struct device_driver*) ;
 int driver_remove_groups (struct device_driver*,int ) ;

void driver_unregister(struct device_driver *drv)
{
 if (!drv || !drv->p) {
  WARN(1, "Unexpected driver unregister!\n");
  return;
 }
 driver_remove_groups(drv, drv->groups);
 bus_remove_driver(drv);
}
