
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_driver {int driver; } ;


 int driver_unregister (int *) ;

void fsl_mc_driver_unregister(struct fsl_mc_driver *mc_driver)
{
 driver_unregister(&mc_driver->driver);
}
