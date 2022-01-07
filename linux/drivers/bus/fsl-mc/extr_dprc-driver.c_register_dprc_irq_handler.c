
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int dev; struct fsl_mc_device_irq** irqs; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int devm_request_threaded_irq (int *,int ,int ,int ,int,int ,int *) ;
 int dprc_irq0_handler ;
 int dprc_irq0_handler_thread ;

__attribute__((used)) static int register_dprc_irq_handler(struct fsl_mc_device *mc_dev)
{
 int error;
 struct fsl_mc_device_irq *irq = mc_dev->irqs[0];





 error = devm_request_threaded_irq(&mc_dev->dev,
       irq->msi_desc->irq,
       dprc_irq0_handler,
       dprc_irq0_handler_thread,
       IRQF_NO_SUSPEND | IRQF_ONESHOT,
       dev_name(&mc_dev->dev),
       &mc_dev->dev);
 if (error < 0) {
  dev_err(&mc_dev->dev,
   "devm_request_threaded_irq() failed: %d\n",
   error);
  return error;
 }

 return 0;
}
