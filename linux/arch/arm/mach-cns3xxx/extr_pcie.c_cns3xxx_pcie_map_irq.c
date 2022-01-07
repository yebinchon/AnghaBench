
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct cns3xxx_pcie {int* irqs; } ;
struct TYPE_2__ {int number; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int pci_domain_nr (TYPE_1__*) ;
 struct cns3xxx_pcie* pdev_to_cnspci (struct pci_dev const*) ;
 int pr_info (char*,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int cns3xxx_pcie_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 struct cns3xxx_pcie *cnspci = pdev_to_cnspci(dev);
 int irq = cnspci->irqs[!!dev->bus->number];

 pr_info("PCIe map irq: %04d:%02x:%02x.%02x slot %d, pin %d, irq: %d\n",
  pci_domain_nr(dev->bus), dev->bus->number, PCI_SLOT(dev->devfn),
  PCI_FUNC(dev->devfn), slot, pin, irq);

 return irq;
}
