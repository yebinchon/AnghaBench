
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct sunxi_rsb_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int sunxi_rsb_bus ;

int sunxi_rsb_driver_register(struct sunxi_rsb_driver *rdrv)
{
 rdrv->driver.bus = &sunxi_rsb_bus;
 return driver_register(&rdrv->driver);
}
