
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_msg {int dummy; } ;
struct TYPE_2__ {size_t msi_index; } ;
struct msi_desc {struct msi_msg msg; TYPE_1__ fsl_mc; int dev; } ;
struct irq_data {int dummy; } ;
struct fsl_mc_device_irq {int dummy; } ;
struct fsl_mc_device {int dummy; } ;
struct fsl_mc_bus {struct fsl_mc_device_irq* irq_resources; } ;


 int __fsl_mc_msi_write_msg (struct fsl_mc_device*,struct fsl_mc_device_irq*) ;
 struct msi_desc* irq_data_get_msi_desc (struct irq_data*) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;
 struct fsl_mc_device* to_fsl_mc_device (int ) ;

__attribute__((used)) static void fsl_mc_msi_write_msg(struct irq_data *irq_data,
     struct msi_msg *msg)
{
 struct msi_desc *msi_desc = irq_data_get_msi_desc(irq_data);
 struct fsl_mc_device *mc_bus_dev = to_fsl_mc_device(msi_desc->dev);
 struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);
 struct fsl_mc_device_irq *mc_dev_irq =
  &mc_bus->irq_resources[msi_desc->fsl_mc.msi_index];

 msi_desc->msg = *msg;




 __fsl_mc_msi_write_msg(mc_bus_dev, mc_dev_irq);
}
