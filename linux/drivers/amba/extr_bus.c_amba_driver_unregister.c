
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_driver {int drv; } ;


 int driver_unregister (int *) ;

void amba_driver_unregister(struct amba_driver *drv)
{
 driver_unregister(&drv->drv);
}
