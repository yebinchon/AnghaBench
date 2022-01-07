
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dev; int mc_handle; int mc_io; } ;


 int dev_err (int *,char*,int) ;
 int dprc_set_irq_enable (int ,int ,int ,int ,int) ;
 int dprc_set_irq_mask (int ,int ,int ,int ,int) ;

__attribute__((used)) static int enable_dprc_irq(struct fsl_mc_device *mc_dev)
{
 int error;




 error = dprc_set_irq_mask(mc_dev->mc_io, 0, mc_dev->mc_handle, 0,
      ~0x0u);
 if (error < 0) {
  dev_err(&mc_dev->dev,
   "Enabling DPRC IRQ failed: dprc_set_irq_mask() failed: %d\n",
   error);

  return error;
 }




 error = dprc_set_irq_enable(mc_dev->mc_io, 0, mc_dev->mc_handle, 0, 1);
 if (error < 0) {
  dev_err(&mc_dev->dev,
   "Enabling DPRC IRQ failed: dprc_set_irq_enable() failed: %d\n",
   error);

  return error;
 }

 return 0;
}
