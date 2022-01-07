
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct locomo_driver {TYPE_1__ drv; } ;


 int driver_register (TYPE_1__*) ;
 int locomo_bus_type ;

int locomo_driver_register(struct locomo_driver *driver)
{
 driver->drv.bus = &locomo_bus_type;
 return driver_register(&driver->drv);
}
