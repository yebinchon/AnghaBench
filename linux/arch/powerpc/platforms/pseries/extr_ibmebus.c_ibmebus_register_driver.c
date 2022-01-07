
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int of_match_table; } ;
struct platform_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int ibmebus_bus_type ;
 int ibmebus_create_devices (int ) ;

int ibmebus_register_driver(struct platform_driver *drv)
{

 ibmebus_create_devices(drv->driver.of_match_table);

 drv->driver.bus = &ibmebus_bus_type;
 return driver_register(&drv->driver);
}
