
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo_driver {int drv; } ;


 int driver_unregister (int *) ;

void locomo_driver_unregister(struct locomo_driver *driver)
{
 driver_unregister(&driver->drv);
}
