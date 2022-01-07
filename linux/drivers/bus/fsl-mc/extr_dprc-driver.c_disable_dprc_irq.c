
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_io {int dummy; } ;
struct fsl_mc_device {int dev; int mc_handle; struct fsl_mc_io* mc_io; } ;


 int dev_err (int *,char*,int) ;
 int dprc_clear_irq_status (struct fsl_mc_io*,int ,int ,int ,int) ;
 int dprc_set_irq_enable (struct fsl_mc_io*,int ,int ,int ,int ) ;
 int dprc_set_irq_mask (struct fsl_mc_io*,int ,int ,int ,int) ;

__attribute__((used)) static int disable_dprc_irq(struct fsl_mc_device *mc_dev)
{
 int error;
 struct fsl_mc_io *mc_io = mc_dev->mc_io;




 error = dprc_set_irq_enable(mc_io, 0, mc_dev->mc_handle, 0, 0);
 if (error < 0) {
  dev_err(&mc_dev->dev,
   "Disabling DPRC IRQ failed: dprc_set_irq_enable() failed: %d\n",
   error);
  return error;
 }




 error = dprc_set_irq_mask(mc_io, 0, mc_dev->mc_handle, 0, 0x0);
 if (error < 0) {
  dev_err(&mc_dev->dev,
   "Disabling DPRC IRQ failed: dprc_set_irq_mask() failed: %d\n",
   error);
  return error;
 }




 error = dprc_clear_irq_status(mc_io, 0, mc_dev->mc_handle, 0, ~0x0U);
 if (error < 0) {
  dev_err(&mc_dev->dev,
   "Disabling DPRC IRQ failed: dprc_clear_irq_status() failed: %d\n",
   error);
  return error;
 }

 return 0;
}
