
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; scalar_t__ owner; scalar_t__ name; } ;
struct gio_driver {TYPE_1__ driver; scalar_t__ owner; scalar_t__ name; } ;


 int driver_register (TYPE_1__*) ;
 int gio_bus_type ;

int gio_register_driver(struct gio_driver *drv)
{

 if (!drv->driver.name)
  drv->driver.name = drv->name;
 if (!drv->driver.owner)
  drv->driver.owner = drv->owner;
 drv->driver.bus = &gio_bus_type;


 return driver_register(&drv->driver);
}
