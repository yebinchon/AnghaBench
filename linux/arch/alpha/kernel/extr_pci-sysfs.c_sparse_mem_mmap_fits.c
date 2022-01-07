
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int * resource; int bus; struct pci_controller* sysdata; } ;
struct pci_controller {scalar_t__ sparse_mem_base; scalar_t__ dense_mem_base; } ;
struct pci_bus_region {unsigned long end; } ;


 int pcibios_resource_to_bus (int ,struct pci_bus_region*,int *) ;

__attribute__((used)) static int sparse_mem_mmap_fits(struct pci_dev *pdev, int num)
{
 struct pci_bus_region bar;
 struct pci_controller *hose = pdev->sysdata;
 long dense_offset;
 unsigned long sparse_size;

 pcibios_resource_to_bus(pdev->bus, &bar, &pdev->resource[num]);





 dense_offset = (long)(hose->dense_mem_base - hose->sparse_mem_base);
 sparse_size = dense_offset >= 0x400000000UL ? 0x20000000 : 0x8000000;

 return bar.end < sparse_size;
}
