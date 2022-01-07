
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_driver {int drv; } ;


 int driver_unregister (int *) ;

void lm_driver_unregister(struct lm_driver *drv)
{
 driver_unregister(&drv->drv);
}
