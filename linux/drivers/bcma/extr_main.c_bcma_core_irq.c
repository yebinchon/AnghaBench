
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcma_device {struct bcma_bus* bus; } ;
struct TYPE_4__ {int core; } ;
struct bcma_bus {int hosttype; int dev; TYPE_2__ drv_mips; TYPE_1__* host_pci; } ;
struct TYPE_3__ {unsigned int irq; } ;





 unsigned int bcma_core_mips_irq (struct bcma_device*) ;
 unsigned int bcma_of_get_irq (int ,struct bcma_device*,int) ;

unsigned int bcma_core_irq(struct bcma_device *core, int num)
{
 struct bcma_bus *bus = core->bus;
 unsigned int mips_irq;

 switch (bus->hosttype) {
 case 130:
  return bus->host_pci->irq;
 case 128:
  if (bus->drv_mips.core && num == 0) {
   mips_irq = bcma_core_mips_irq(core);
   return mips_irq <= 4 ? mips_irq + 2 : 0;
  }
  if (bus->dev)
   return bcma_of_get_irq(bus->dev, core, num);
  return 0;
 case 129:
  return 0;
 }

 return 0;
}
