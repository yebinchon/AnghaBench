
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int cell_dma_dev_setup (int *) ;

__attribute__((used)) static void cell_pci_dma_dev_setup(struct pci_dev *dev)
{
 cell_dma_dev_setup(&dev->dev);
}
