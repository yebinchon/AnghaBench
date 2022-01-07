
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int self; } ;


 int iommu_table_iobmap_inited ;
 int iommu_table_iobmap_setup () ;
 int pr_debug (char*,struct pci_bus*,int ) ;

__attribute__((used)) static void pci_dma_bus_setup_pasemi(struct pci_bus *bus)
{
 pr_debug("pci_dma_bus_setup, bus %p, bus->self %p\n", bus, bus->self);

 if (!iommu_table_iobmap_inited) {
  iommu_table_iobmap_inited = 1;
  iommu_table_iobmap_setup();
 }
}
