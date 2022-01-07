
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct TYPE_4__ {int type; } ;
struct fsl_mc_device {TYPE_2__ dev; TYPE_1__ obj_desc; } ;
struct fsl_mc_bus {int dummy; } ;
typedef enum fsl_mc_pool_type { ____Placeholder_fsl_mc_pool_type } fsl_mc_pool_type ;


 int EINVAL ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_is_fsl_mc (TYPE_2__*) ;
 int fsl_mc_is_allocatable (struct fsl_mc_device*) ;
 int fsl_mc_resource_pool_add_device (struct fsl_mc_bus*,int,struct fsl_mc_device*) ;
 int object_type_to_pool_type (int ,int*) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;
 struct fsl_mc_device* to_fsl_mc_device (int ) ;

__attribute__((used)) static int fsl_mc_allocator_probe(struct fsl_mc_device *mc_dev)
{
 enum fsl_mc_pool_type pool_type;
 struct fsl_mc_device *mc_bus_dev;
 struct fsl_mc_bus *mc_bus;
 int error;

 if (!fsl_mc_is_allocatable(mc_dev))
  return -EINVAL;

 mc_bus_dev = to_fsl_mc_device(mc_dev->dev.parent);
 if (!dev_is_fsl_mc(&mc_bus_dev->dev))
  return -EINVAL;

 mc_bus = to_fsl_mc_bus(mc_bus_dev);
 error = object_type_to_pool_type(mc_dev->obj_desc.type, &pool_type);
 if (error < 0)
  return error;

 error = fsl_mc_resource_pool_add_device(mc_bus, pool_type, mc_dev);
 if (error < 0)
  return error;

 dev_dbg(&mc_dev->dev,
  "Allocatable fsl-mc device bound to fsl_mc_allocator driver");
 return 0;
}
