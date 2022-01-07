
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bcma_device {int dummy; } ;
struct bcma_bus {int dummy; } ;


 int bcma_core_mips_set_irq (struct bcma_device*,unsigned int) ;
 struct bcma_device* bcma_find_core_unit (struct bcma_bus*,int ,int ) ;
 int bcma_warn (struct bcma_bus*,char*,int ,int ) ;

__attribute__((used)) static void bcma_core_mips_set_irq_name(struct bcma_bus *bus, unsigned int irq,
     u16 coreid, u8 unit)
{
 struct bcma_device *core;

 core = bcma_find_core_unit(bus, coreid, unit);
 if (!core) {
  bcma_warn(bus,
     "Can not find core (id: 0x%x, unit %i) for IRQ configuration.\n",
     coreid, unit);
  return;
 }

 bcma_core_mips_set_irq(core, irq);
}
