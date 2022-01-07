
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct ecard_driver {TYPE_1__ drv; } ;


 int driver_register (TYPE_1__*) ;
 int ecard_bus_type ;

int ecard_register_driver(struct ecard_driver *drv)
{
 drv->drv.bus = &ecard_bus_type;

 return driver_register(&drv->drv);
}
