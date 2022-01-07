
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dummy; } ;


 int FSL_MC_NUM_POOL_TYPES ;
 int fsl_mc_cleanup_resource_pool (struct fsl_mc_device*,int) ;

void fsl_mc_cleanup_all_resource_pools(struct fsl_mc_device *mc_bus_dev)
{
 int pool_type;

 for (pool_type = 0; pool_type < FSL_MC_NUM_POOL_TYPES; pool_type++)
  fsl_mc_cleanup_resource_pool(mc_bus_dev, pool_type);
}
