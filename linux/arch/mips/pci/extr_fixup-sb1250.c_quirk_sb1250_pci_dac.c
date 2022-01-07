
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb1250_bus_dma_mask_exclude {int set; } ;
struct pci_dev {int bus; } ;


 int pci_walk_bus (int ,int ,struct sb1250_bus_dma_mask_exclude*) ;
 int sb1250_bus_dma_mask ;

__attribute__((used)) static void quirk_sb1250_pci_dac(struct pci_dev *dev)
{
 struct sb1250_bus_dma_mask_exclude exclude = { .set = 0 };

 pci_walk_bus(dev->bus, sb1250_bus_dma_mask, &exclude);
}
