
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_driver {int (* shutdown ) (struct fsl_mc_device*) ;} ;
struct fsl_mc_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct fsl_mc_device*) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;
 struct fsl_mc_driver* to_fsl_mc_driver (int ) ;

__attribute__((used)) static void fsl_mc_driver_shutdown(struct device *dev)
{
 struct fsl_mc_driver *mc_drv = to_fsl_mc_driver(dev->driver);
 struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);

 mc_drv->shutdown(mc_dev);
}
