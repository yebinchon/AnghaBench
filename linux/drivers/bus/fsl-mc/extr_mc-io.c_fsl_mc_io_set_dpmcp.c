
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_io {struct fsl_mc_device* dpmcp_dev; } ;
struct TYPE_2__ {int id; } ;
struct fsl_mc_device {struct fsl_mc_io* mc_io; int mc_handle; TYPE_1__ obj_desc; } ;


 int EINVAL ;
 int dpmcp_open (struct fsl_mc_io*,int ,int ,int *) ;

__attribute__((used)) static int fsl_mc_io_set_dpmcp(struct fsl_mc_io *mc_io,
          struct fsl_mc_device *dpmcp_dev)
{
 int error;

 if (mc_io->dpmcp_dev)
  return -EINVAL;

 if (dpmcp_dev->mc_io)
  return -EINVAL;

 error = dpmcp_open(mc_io,
      0,
      dpmcp_dev->obj_desc.id,
      &dpmcp_dev->mc_handle);
 if (error < 0)
  return error;

 mc_io->dpmcp_dev = dpmcp_dev;
 dpmcp_dev->mc_io = mc_io;
 return 0;
}
