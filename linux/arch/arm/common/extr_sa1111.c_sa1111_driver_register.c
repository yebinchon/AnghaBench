
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct sa1111_driver {TYPE_1__ drv; } ;


 int driver_register (TYPE_1__*) ;
 int sa1111_bus_type ;

int sa1111_driver_register(struct sa1111_driver *driver)
{
 driver->drv.bus = &sa1111_bus_type;
 return driver_register(&driver->drv);
}
