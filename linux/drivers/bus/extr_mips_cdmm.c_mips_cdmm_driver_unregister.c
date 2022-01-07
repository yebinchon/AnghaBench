
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_driver {int drv; } ;


 int driver_unregister (int *) ;

void mips_cdmm_driver_unregister(struct mips_cdmm_driver *drv)
{
 driver_unregister(&drv->drv);
}
