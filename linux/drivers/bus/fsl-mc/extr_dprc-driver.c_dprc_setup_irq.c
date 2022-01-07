
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dummy; } ;


 int disable_dprc_irq (struct fsl_mc_device*) ;
 int enable_dprc_irq (struct fsl_mc_device*) ;
 int fsl_mc_allocate_irqs (struct fsl_mc_device*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;
 int register_dprc_irq_handler (struct fsl_mc_device*) ;

__attribute__((used)) static int dprc_setup_irq(struct fsl_mc_device *mc_dev)
{
 int error;

 error = fsl_mc_allocate_irqs(mc_dev);
 if (error < 0)
  return error;

 error = disable_dprc_irq(mc_dev);
 if (error < 0)
  goto error_free_irqs;

 error = register_dprc_irq_handler(mc_dev);
 if (error < 0)
  goto error_free_irqs;

 error = enable_dprc_irq(mc_dev);
 if (error < 0)
  goto error_free_irqs;

 return 0;

error_free_irqs:
 fsl_mc_free_irqs(mc_dev);
 return error;
}
