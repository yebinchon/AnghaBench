
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {struct fsl_mc_device* regions; } ;
struct device {int dummy; } ;


 scalar_t__ is_fsl_mc_bus_dprc (struct fsl_mc_device*) ;
 int kfree (struct fsl_mc_device*) ;
 struct fsl_mc_device* to_fsl_mc_bus (struct fsl_mc_device*) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;

__attribute__((used)) static void fsl_mc_device_release(struct device *dev)
{
 struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);

 kfree(mc_dev->regions);

 if (is_fsl_mc_bus_dprc(mc_dev))
  kfree(to_fsl_mc_bus(mc_dev));
 else
  kfree(mc_dev);
}
