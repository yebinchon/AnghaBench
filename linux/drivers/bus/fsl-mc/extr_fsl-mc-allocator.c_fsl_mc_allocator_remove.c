
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dev; scalar_t__ resource; } ;


 int EINVAL ;
 int dev_dbg (int *,char*) ;
 int fsl_mc_is_allocatable (struct fsl_mc_device*) ;
 int fsl_mc_resource_pool_remove_device (struct fsl_mc_device*) ;

__attribute__((used)) static int fsl_mc_allocator_remove(struct fsl_mc_device *mc_dev)
{
 int error;

 if (!fsl_mc_is_allocatable(mc_dev))
  return -EINVAL;

 if (mc_dev->resource) {
  error = fsl_mc_resource_pool_remove_device(mc_dev);
  if (error < 0)
   return error;
 }

 dev_dbg(&mc_dev->dev,
  "Allocatable fsl-mc device unbound from fsl_mc_allocator driver");
 return 0;
}
