
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* mod_name; struct module* owner; int name; int * bus; } ;
struct vio_driver {TYPE_1__ driver; int name; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int vio_bus_type ;

int __vio_register_driver(struct vio_driver *viodrv, struct module *owner,
   const char *mod_name)
{
 viodrv->driver.bus = &vio_bus_type;
 viodrv->driver.name = viodrv->name;
 viodrv->driver.owner = owner;
 viodrv->driver.mod_name = mod_name;

 return driver_register(&viodrv->driver);
}
