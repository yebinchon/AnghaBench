
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct device {int dummy; } ;
struct bridge_controller {scalar_t__ baddr; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 struct bridge_controller* BRIDGE_CONTROLLER (int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct bridge_controller *bc = BRIDGE_CONTROLLER(pdev->bus);

 return bc->baddr + paddr;
}
