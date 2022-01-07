
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int dev; struct fsl_mc_device_irq** irqs; } ;
struct TYPE_2__ {int irq; } ;


 int devm_free_irq (int *,int ,int *) ;
 int disable_dprc_irq (struct fsl_mc_device*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;

__attribute__((used)) static void dprc_teardown_irq(struct fsl_mc_device *mc_dev)
{
 struct fsl_mc_device_irq *irq = mc_dev->irqs[0];

 (void)disable_dprc_irq(mc_dev);

 devm_free_irq(&mc_dev->dev, irq->msi_desc->irq, &mc_dev->dev);

 fsl_mc_free_irqs(mc_dev);
}
