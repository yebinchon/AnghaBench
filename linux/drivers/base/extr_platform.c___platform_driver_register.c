
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; int * bus; struct module* owner; } ;
struct platform_driver {TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int platform_bus_type ;
 int platform_drv_probe ;
 int platform_drv_remove ;
 int platform_drv_shutdown ;

int __platform_driver_register(struct platform_driver *drv,
    struct module *owner)
{
 drv->driver.owner = owner;
 drv->driver.bus = &platform_bus_type;
 drv->driver.probe = platform_drv_probe;
 drv->driver.remove = platform_drv_remove;
 drv->driver.shutdown = platform_drv_shutdown;

 return driver_register(&drv->driver);
}
