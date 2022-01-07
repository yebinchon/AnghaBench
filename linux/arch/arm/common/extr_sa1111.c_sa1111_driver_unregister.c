
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_driver {int drv; } ;


 int driver_unregister (int *) ;

void sa1111_driver_unregister(struct sa1111_driver *driver)
{
 driver_unregister(&driver->drv);
}
