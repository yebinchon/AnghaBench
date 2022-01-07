
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_resource {scalar_t__ type; struct fsl_mc_device* data; } ;
struct fsl_mc_io {struct fsl_mc_device* dpmcp_dev; } ;
struct fsl_mc_device {int * consumer_link; struct fsl_mc_resource* resource; } ;


 scalar_t__ FSL_MC_POOL_DPMCP ;
 int fsl_destroy_mc_io (struct fsl_mc_io*) ;
 int fsl_mc_resource_free (struct fsl_mc_resource*) ;

void fsl_mc_portal_free(struct fsl_mc_io *mc_io)
{
 struct fsl_mc_device *dpmcp_dev;
 struct fsl_mc_resource *resource;





 dpmcp_dev = mc_io->dpmcp_dev;

 resource = dpmcp_dev->resource;
 if (!resource || resource->type != FSL_MC_POOL_DPMCP)
  return;

 if (resource->data != dpmcp_dev)
  return;

 fsl_destroy_mc_io(mc_io);
 fsl_mc_resource_free(resource);

 dpmcp_dev->consumer_link = ((void*)0);
}
