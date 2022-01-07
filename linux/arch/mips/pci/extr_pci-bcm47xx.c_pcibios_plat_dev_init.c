
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ BCM47XX_BUS_TYPE_BCMA ;
 scalar_t__ BCM47XX_BUS_TYPE_SSB ;
 scalar_t__ bcm47xx_bus_type ;
 int bcm47xx_pcibios_plat_dev_init_bcma (struct pci_dev*) ;
 int bcm47xx_pcibios_plat_dev_init_ssb (struct pci_dev*) ;

int pcibios_plat_dev_init(struct pci_dev *dev)
{
  return 0;
}
