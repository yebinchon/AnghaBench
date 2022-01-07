
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_driver {int drv; } ;


 int driver_unregister (int *) ;

void bcma_driver_unregister(struct bcma_driver *drv)
{
 driver_unregister(&drv->drv);
}
