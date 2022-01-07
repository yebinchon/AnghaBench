
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_resource_pool {scalar_t__ type; scalar_t__ free_count; scalar_t__ max_count; int mutex; int free_list; } ;
struct fsl_mc_resource {scalar_t__ type; int node; struct fsl_mc_resource_pool* parent_pool; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fsl_mc_resource_free(struct fsl_mc_resource *resource)
{
 struct fsl_mc_resource_pool *res_pool;

 res_pool = resource->parent_pool;
 if (resource->type != res_pool->type)
  return;

 mutex_lock(&res_pool->mutex);
 if (res_pool->free_count < 0 ||
     res_pool->free_count >= res_pool->max_count)
  goto out_unlock;

 if (!list_empty(&resource->node))
  goto out_unlock;

 list_add_tail(&resource->node, &res_pool->free_list);
 res_pool->free_count++;
out_unlock:
 mutex_unlock(&res_pool->mutex);
}
