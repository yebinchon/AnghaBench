
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_resource_pool {int type; int mutex; int free_list; struct fsl_mc_bus* mc_bus; scalar_t__ free_count; scalar_t__ max_count; } ;
struct fsl_mc_device {int dummy; } ;
struct fsl_mc_bus {struct fsl_mc_resource_pool* resource_pools; } ;


 int FSL_MC_NUM_POOL_TYPES ;
 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;

void fsl_mc_init_all_resource_pools(struct fsl_mc_device *mc_bus_dev)
{
 int pool_type;
 struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);

 for (pool_type = 0; pool_type < FSL_MC_NUM_POOL_TYPES; pool_type++) {
  struct fsl_mc_resource_pool *res_pool =
      &mc_bus->resource_pools[pool_type];

  res_pool->type = pool_type;
  res_pool->max_count = 0;
  res_pool->free_count = 0;
  res_pool->mc_bus = mc_bus;
  INIT_LIST_HEAD(&res_pool->free_list);
  mutex_init(&res_pool->mutex);
 }
}
