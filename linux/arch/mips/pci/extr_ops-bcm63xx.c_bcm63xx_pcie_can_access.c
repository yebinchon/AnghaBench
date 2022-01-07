
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;


 int DLSTATUS_PHYLINKUP ;


 int PCIE_DLSTATUS_REG ;
 int PCI_SLOT (int) ;
 int bcm_pcie_readl (int ) ;

__attribute__((used)) static int bcm63xx_pcie_can_access(struct pci_bus *bus, int devfn)
{
 switch (bus->number) {
 case 129:
  return PCI_SLOT(devfn) == 0;
 case 128:
  if (PCI_SLOT(devfn) == 0)
   return bcm_pcie_readl(PCIE_DLSTATUS_REG)
     & DLSTATUS_PHYLINKUP;

 default:
  return 0;
 }
}
