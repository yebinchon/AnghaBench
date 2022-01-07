
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; struct module* owner; } ;
struct moxtet_driver {TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int moxtet_bus_type ;

int __moxtet_register_driver(struct module *owner,
        struct moxtet_driver *mdrv)
{
 mdrv->driver.owner = owner;
 mdrv->driver.bus = &moxtet_bus_type;
 return driver_register(&mdrv->driver);
}
