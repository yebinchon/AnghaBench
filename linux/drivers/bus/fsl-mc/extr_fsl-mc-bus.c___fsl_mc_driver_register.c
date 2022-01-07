
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int name; int shutdown; int remove; int probe; int * bus; struct module* owner; } ;
struct fsl_mc_driver {TYPE_1__ driver; scalar_t__ shutdown; scalar_t__ remove; scalar_t__ probe; } ;


 int driver_register (TYPE_1__*) ;
 int fsl_mc_bus_type ;
 int fsl_mc_driver_probe ;
 int fsl_mc_driver_remove ;
 int fsl_mc_driver_shutdown ;
 int pr_err (char*,int ,int) ;

int __fsl_mc_driver_register(struct fsl_mc_driver *mc_driver,
        struct module *owner)
{
 int error;

 mc_driver->driver.owner = owner;
 mc_driver->driver.bus = &fsl_mc_bus_type;

 if (mc_driver->probe)
  mc_driver->driver.probe = fsl_mc_driver_probe;

 if (mc_driver->remove)
  mc_driver->driver.remove = fsl_mc_driver_remove;

 if (mc_driver->shutdown)
  mc_driver->driver.shutdown = fsl_mc_driver_shutdown;

 error = driver_register(&mc_driver->driver);
 if (error < 0) {
  pr_err("driver_register() failed for %s: %d\n",
         mc_driver->driver.name, error);
  return error;
 }

 return 0;
}
