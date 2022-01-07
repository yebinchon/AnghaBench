
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_resource {scalar_t__ type; struct fsl_mc_device* data; } ;
struct fsl_mc_device {int * consumer_link; struct fsl_mc_resource* resource; } ;


 scalar_t__ FSL_MC_POOL_DPMCP ;
 int fsl_mc_resource_free (struct fsl_mc_resource*) ;

void fsl_mc_object_free(struct fsl_mc_device *mc_adev)
{
 struct fsl_mc_resource *resource;

 resource = mc_adev->resource;
 if (resource->type == FSL_MC_POOL_DPMCP)
  return;
 if (resource->data != mc_adev)
  return;

 fsl_mc_resource_free(resource);

 mc_adev->consumer_link = ((void*)0);
}
