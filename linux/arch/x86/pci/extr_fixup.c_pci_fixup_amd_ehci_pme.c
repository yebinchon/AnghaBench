
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int pme_support; int dev; } ;


 int PCI_PM_CAP_PME_D3 ;
 int PCI_PM_CAP_PME_D3cold ;
 int PCI_PM_CAP_PME_SHIFT ;
 int dev_info (int *,char*) ;

__attribute__((used)) static void pci_fixup_amd_ehci_pme(struct pci_dev *dev)
{
 dev_info(&dev->dev, "PME# does not work under D3, disabling it\n");
 dev->pme_support &= ~((PCI_PM_CAP_PME_D3 | PCI_PM_CAP_PME_D3cold)
  >> PCI_PM_CAP_PME_SHIFT);
}
