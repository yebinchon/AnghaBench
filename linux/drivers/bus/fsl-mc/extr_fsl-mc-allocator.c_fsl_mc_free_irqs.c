
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsl_mc_device_irq {int resource; int * mc_dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {int irq_count; } ;
struct fsl_mc_device {struct fsl_mc_device_irq** irqs; TYPE_1__ dev; TYPE_2__ obj_desc; } ;
struct fsl_mc_bus {int irq_resources; } ;


 int fsl_mc_resource_free (int *) ;
 scalar_t__ is_fsl_mc_bus_dprc (struct fsl_mc_device*) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;
 struct fsl_mc_device* to_fsl_mc_device (int ) ;

void fsl_mc_free_irqs(struct fsl_mc_device *mc_dev)
{
 int i;
 int irq_count;
 struct fsl_mc_bus *mc_bus;
 struct fsl_mc_device_irq **irqs = mc_dev->irqs;

 if (!irqs)
  return;

 irq_count = mc_dev->obj_desc.irq_count;

 if (is_fsl_mc_bus_dprc(mc_dev))
  mc_bus = to_fsl_mc_bus(mc_dev);
 else
  mc_bus = to_fsl_mc_bus(to_fsl_mc_device(mc_dev->dev.parent));

 if (!mc_bus->irq_resources)
  return;

 for (i = 0; i < irq_count; i++) {
  irqs[i]->mc_dev = ((void*)0);
  fsl_mc_resource_free(&irqs[i]->resource);
 }

 mc_dev->irqs = ((void*)0);
}
