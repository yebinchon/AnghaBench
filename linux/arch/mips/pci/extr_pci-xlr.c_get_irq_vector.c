
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 int PCI_SLOT (int ) ;
 int PIC_PCIX_IRQ ;
 int nlm_chip_is_xls () ;
 int nlm_pci_link_to_irq (int) ;
 struct pci_dev* xls_get_pcie_link (struct pci_dev const*) ;

__attribute__((used)) static int get_irq_vector(const struct pci_dev *dev)
{
 struct pci_dev *lnk;
 int link;

 if (!nlm_chip_is_xls())
  return PIC_PCIX_IRQ;

 lnk = xls_get_pcie_link(dev);
 if (lnk == ((void*)0))
  return 0;

 link = PCI_SLOT(lnk->devfn);
 return nlm_pci_link_to_irq(link);
}
