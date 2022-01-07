
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pci_dev {int devfn; int dev; } ;
struct TYPE_2__ {scalar_t__ is_msix; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int dev_err (int *,char*) ;
 int nlm_get_pcie_base (int,int) ;
 struct pci_dev* xlp_get_pcie_link (struct pci_dev*) ;
 int xlp_setup_msi (int ,int,int,struct msi_desc*) ;
 int xlp_setup_msix (int ,int,int,struct msi_desc*) ;

int arch_setup_msi_irq(struct pci_dev *dev, struct msi_desc *desc)
{
 struct pci_dev *lnkdev;
 uint64_t lnkbase;
 int node, link, slot;

 lnkdev = xlp_get_pcie_link(dev);
 if (lnkdev == ((void*)0)) {
  dev_err(&dev->dev, "Could not find bridge\n");
  return 1;
 }
 slot = PCI_SLOT(lnkdev->devfn);
 link = PCI_FUNC(lnkdev->devfn);
 node = slot / 8;
 lnkbase = nlm_get_pcie_base(node, link);

 if (desc->msi_attrib.is_msix)
  return xlp_setup_msix(lnkbase, node, link, desc);
 else
  return xlp_setup_msi(lnkbase, node, link, desc);
}
