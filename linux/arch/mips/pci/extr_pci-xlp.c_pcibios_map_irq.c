
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int devfn; } ;


 int PCI_FUNC (int ) ;
 int PIC_PCIE_LINK_LEGACY_IRQ (int) ;
 int nlm_irq_to_xirq (int,int ) ;
 struct pci_dev* xlp_get_pcie_link (struct pci_dev const*) ;
 int xlp_socdev_to_node (struct pci_dev*) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 struct pci_dev *lnkdev;
 int lnkfunc, node;





 lnkdev = xlp_get_pcie_link(dev);
 if (lnkdev == ((void*)0))
  return 0;

 lnkfunc = PCI_FUNC(lnkdev->devfn);
 node = xlp_socdev_to_node(lnkdev);

 return nlm_irq_to_xirq(node, PIC_PCIE_LINK_LEGACY_IRQ(lnkfunc));
}
