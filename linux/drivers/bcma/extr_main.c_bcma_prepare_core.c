
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int coherent_dma_mask; int * dma_mask; struct TYPE_5__* parent; int * bus; int release; } ;
struct bcma_device {TYPE_2__ dev; TYPE_2__* dma_dev; int irq; int core_index; } ;
struct bcma_bus {int hosttype; TYPE_2__* dev; TYPE_1__* host_pci; int num; } ;
struct TYPE_4__ {int irq; } ;





 int CONFIG_OF ;
 int IS_ENABLED (int ) ;
 int bcma_bus_type ;
 int bcma_of_fill_device (TYPE_2__*,struct bcma_device*) ;
 int bcma_release_core_dev ;
 int dev_set_name (TYPE_2__*,char*,int ,int ) ;

void bcma_prepare_core(struct bcma_bus *bus, struct bcma_device *core)
{
 core->dev.release = bcma_release_core_dev;
 core->dev.bus = &bcma_bus_type;
 dev_set_name(&core->dev, "bcma%d:%d", bus->num, core->core_index);
 core->dev.parent = bus->dev;
 if (bus->dev)
  bcma_of_fill_device(bus->dev, core);

 switch (bus->hosttype) {
 case 130:
  core->dma_dev = bus->dev;
  core->irq = bus->host_pci->irq;
  break;
 case 128:
  if (IS_ENABLED(CONFIG_OF) && bus->dev) {
   core->dma_dev = bus->dev;
  } else {
   core->dev.dma_mask = &core->dev.coherent_dma_mask;
   core->dma_dev = &core->dev;
  }
  break;
 case 129:
  break;
 }
}
