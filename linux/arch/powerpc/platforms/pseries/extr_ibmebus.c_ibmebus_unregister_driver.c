
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int driver; } ;


 int driver_unregister (int *) ;

void ibmebus_unregister_driver(struct platform_driver *drv)
{
 driver_unregister(&drv->driver);
}
