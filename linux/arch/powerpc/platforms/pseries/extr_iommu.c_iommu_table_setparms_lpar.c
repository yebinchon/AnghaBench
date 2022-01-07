
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_controller {TYPE_1__* bus; } ;
struct iommu_table_group {unsigned long tce32_start; unsigned long tce32_size; } ;
struct iommu_table {unsigned long it_page_shift; int it_blocksize; unsigned long it_offset; unsigned long it_size; int it_type; scalar_t__ it_base; int it_busno; int it_index; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int number; } ;


 unsigned long IOMMU_PAGE_SHIFT_4K ;
 int TCE_PCI ;
 int of_parse_dma_window (struct device_node*,int const*,int *,unsigned long*,unsigned long*) ;

__attribute__((used)) static void iommu_table_setparms_lpar(struct pci_controller *phb,
          struct device_node *dn,
          struct iommu_table *tbl,
          struct iommu_table_group *table_group,
          const __be32 *dma_window)
{
 unsigned long offset, size;

 of_parse_dma_window(dn, dma_window, &tbl->it_index, &offset, &size);

 tbl->it_busno = phb->bus->number;
 tbl->it_page_shift = IOMMU_PAGE_SHIFT_4K;
 tbl->it_base = 0;
 tbl->it_blocksize = 16;
 tbl->it_type = TCE_PCI;
 tbl->it_offset = offset >> tbl->it_page_shift;
 tbl->it_size = size >> tbl->it_page_shift;

 table_group->tce32_start = offset;
 table_group->tce32_size = size;
}
