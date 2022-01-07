
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_io {struct fsl_mc_device* dpmcp_dev; } ;
struct fsl_mc_device {int * mc_io; int dev; int mc_handle; } ;


 int dev_err (int *,char*,int) ;
 int dpmcp_close (struct fsl_mc_io*,int ,int ) ;

__attribute__((used)) static void fsl_mc_io_unset_dpmcp(struct fsl_mc_io *mc_io)
{
 int error;
 struct fsl_mc_device *dpmcp_dev = mc_io->dpmcp_dev;

 error = dpmcp_close(mc_io,
       0,
       dpmcp_dev->mc_handle);
 if (error < 0) {
  dev_err(&dpmcp_dev->dev, "dpmcp_close() failed: %d\n",
   error);
 }

 mc_io->dpmcp_dev = ((void*)0);
 dpmcp_dev->mc_io = ((void*)0);
}
