
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pci_dev {scalar_t__ cfg_size; scalar_t__ devfn; TYPE_1__* resource; int bus; } ;
struct TYPE_2__ {int flags; scalar_t__ start; scalar_t__ end; } ;


 int IORESOURCE_PCI_FIXED ;
 scalar_t__ PCIE_CAP_OFFSET ;
 scalar_t__ PCI_DEVFN (int,int) ;
 int PCI_ROM_RESOURCE ;
 unsigned long fixed_bar_cap (int ,scalar_t__) ;
 int pci_read_config_dword (struct pci_dev*,unsigned long,scalar_t__*) ;
 int pci_soc_mode ;

__attribute__((used)) static void pci_fixed_bar_fixup(struct pci_dev *dev)
{
 unsigned long offset;
 u32 size;
 int i;

 if (!pci_soc_mode)
  return;


 if (dev->cfg_size < PCIE_CAP_OFFSET + 4)
  return;


 offset = fixed_bar_cap(dev->bus, dev->devfn);
 if (!offset || PCI_DEVFN(2, 0) == dev->devfn ||
     PCI_DEVFN(2, 2) == dev->devfn)
  return;

 for (i = 0; i < PCI_ROM_RESOURCE; i++) {
  pci_read_config_dword(dev, offset + 8 + (i * 4), &size);
  dev->resource[i].end = dev->resource[i].start + size - 1;
  dev->resource[i].flags |= IORESOURCE_PCI_FIXED;
 }
}
