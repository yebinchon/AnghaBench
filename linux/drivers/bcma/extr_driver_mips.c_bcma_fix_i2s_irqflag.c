
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;


 scalar_t__ BCMA_CHIP_ID_BCM4716 ;
 scalar_t__ BCMA_CHIP_ID_BCM4748 ;
 int BCMA_CORE_I2S ;
 int BCMA_CORE_MIPS_74K ;
 int BCMA_CORE_PCIE ;
 int BCMA_MIPS_OOBSELINA74 ;
 int BCMA_MIPS_OOBSELOUTA30 ;
 int bcma_aread32 (struct bcma_device*,int ) ;
 int bcma_awrite32 (struct bcma_device*,int ,int) ;
 int bcma_debug (struct bcma_bus*,char*) ;
 struct bcma_device* bcma_find_core (struct bcma_bus*,int ) ;

__attribute__((used)) static void bcma_fix_i2s_irqflag(struct bcma_bus *bus)
{
 struct bcma_device *cpu, *pcie, *i2s;




 if (bus->chipinfo.id != BCMA_CHIP_ID_BCM4716 &&
     bus->chipinfo.id != BCMA_CHIP_ID_BCM4748)
  return;

 cpu = bcma_find_core(bus, BCMA_CORE_MIPS_74K);
 pcie = bcma_find_core(bus, BCMA_CORE_PCIE);
 i2s = bcma_find_core(bus, BCMA_CORE_I2S);
 if (cpu && pcie && i2s &&
     bcma_aread32(cpu, BCMA_MIPS_OOBSELINA74) == 0x08060504 &&
     bcma_aread32(pcie, BCMA_MIPS_OOBSELINA74) == 0x08060504 &&
     bcma_aread32(i2s, BCMA_MIPS_OOBSELOUTA30) == 0x88) {
  bcma_awrite32(cpu, BCMA_MIPS_OOBSELINA74, 0x07060504);
  bcma_awrite32(pcie, BCMA_MIPS_OOBSELINA74, 0x07060504);
  bcma_awrite32(i2s, BCMA_MIPS_OOBSELOUTA30, 0x87);
  bcma_debug(bus,
      "Moved i2s interrupt to oob line 7 instead of 8\n");
 }
}
