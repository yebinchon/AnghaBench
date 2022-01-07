
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_iommu_arena {int dma_base; int size; } ;
struct pci_dev {int class; struct pci_controller* sysdata; TYPE_1__* resource; int devfn; } ;
struct pci_controller {struct pci_iommu_arena* sg_pci; } ;
struct TYPE_2__ {int start; int end; scalar_t__ flags; } ;


 int PCI_CLASS_BRIDGE_ISA ;
 int PCI_CLASS_STORAGE_IDE ;
 int PCI_FUNC (int ) ;
 int __direct_map_base ;
 int __direct_map_size ;

__attribute__((used)) static void quirk_cypress(struct pci_dev *dev)
{





 if (dev->class >> 8 == PCI_CLASS_STORAGE_IDE) {
  dev->resource[2].start = dev->resource[3].start = 0;
  dev->resource[2].end = dev->resource[3].end = 0;
  dev->resource[2].flags = dev->resource[3].flags = 0;
  if (PCI_FUNC(dev->devfn) == 2) {
   dev->resource[0].start = 0x170;
   dev->resource[0].end = 0x177;
   dev->resource[1].start = 0x376;
   dev->resource[1].end = 0x376;
  }
 }







 if (dev->class >> 8 == PCI_CLASS_BRIDGE_ISA) {
  if (__direct_map_base + __direct_map_size >= 0xfff00000UL)
   __direct_map_size = 0xfff00000UL - __direct_map_base;
  else {
   struct pci_controller *hose = dev->sysdata;
   struct pci_iommu_arena *pci = hose->sg_pci;
   if (pci && pci->dma_base + pci->size >= 0xfff00000UL)
    pci->size = 0xfff00000UL - pci->dma_base;
  }
 }
}
