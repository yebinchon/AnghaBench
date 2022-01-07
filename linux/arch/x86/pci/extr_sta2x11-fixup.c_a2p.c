
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_mapping {scalar_t__ amba_base; } ;
struct pci_dev {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 struct sta2x11_mapping* sta2x11_pdev_to_mapping (struct pci_dev*) ;

__attribute__((used)) static dma_addr_t a2p(dma_addr_t a, struct pci_dev *pdev)
{
 struct sta2x11_mapping *map;
 dma_addr_t p;

 map = sta2x11_pdev_to_mapping(pdev);
 p = a - map->amba_base;
 return p;
}
