
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_bus {int drv_cc_b; int drv_cc; } ;


 int EBUSY ;
 int bcma_core_chipcommon_b_free (int *) ;
 int bcma_err (struct bcma_bus*,char*,...) ;
 int bcma_gpio_unregister (int *) ;
 int bcma_unregister_cores (struct bcma_bus*) ;

void bcma_bus_unregister(struct bcma_bus *bus)
{
 int err;

 err = bcma_gpio_unregister(&bus->drv_cc);
 if (err == -EBUSY)
  bcma_err(bus, "Some GPIOs are still in use.\n");
 else if (err)
  bcma_err(bus, "Can not unregister GPIO driver: %i\n", err);

 bcma_core_chipcommon_b_free(&bus->drv_cc_b);

 bcma_unregister_cores(bus);
}
