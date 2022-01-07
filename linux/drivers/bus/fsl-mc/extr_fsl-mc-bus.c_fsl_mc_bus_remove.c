
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct fsl_mc {TYPE_1__* root_mc_bus_dev; } ;
struct TYPE_2__ {int * mc_io; int dev; } ;


 int EINVAL ;
 int fsl_destroy_mc_io (int *) ;
 int fsl_mc_device_remove (TYPE_1__*) ;
 int fsl_mc_is_root_dprc (int *) ;
 struct fsl_mc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsl_mc_bus_remove(struct platform_device *pdev)
{
 struct fsl_mc *mc = platform_get_drvdata(pdev);

 if (!fsl_mc_is_root_dprc(&mc->root_mc_bus_dev->dev))
  return -EINVAL;

 fsl_mc_device_remove(mc->root_mc_bus_dev);

 fsl_destroy_mc_io(mc->root_mc_bus_dev->mc_io);
 mc->root_mc_bus_dev->mc_io = ((void*)0);

 return 0;
}
