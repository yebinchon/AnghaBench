
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int iommu_table_dart_inited ;
 int iommu_table_dart_setup () ;

__attribute__((used)) static void pci_dma_bus_setup_dart(struct pci_bus *bus)
{
 if (!iommu_table_dart_inited) {
  iommu_table_dart_inited = 1;
  iommu_table_dart_setup();
 }
}
