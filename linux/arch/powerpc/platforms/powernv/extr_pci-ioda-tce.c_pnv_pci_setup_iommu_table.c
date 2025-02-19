
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_table {int it_blocksize; unsigned long it_base; unsigned int it_page_shift; int it_offset; int it_size; int it_type; scalar_t__ it_busno; scalar_t__ it_index; } ;


 int TCE_PCI ;

void pnv_pci_setup_iommu_table(struct iommu_table *tbl,
  void *tce_mem, u64 tce_size,
  u64 dma_offset, unsigned int page_shift)
{
 tbl->it_blocksize = 16;
 tbl->it_base = (unsigned long)tce_mem;
 tbl->it_page_shift = page_shift;
 tbl->it_offset = dma_offset >> tbl->it_page_shift;
 tbl->it_index = 0;
 tbl->it_size = tce_size >> 3;
 tbl->it_busno = 0;
 tbl->it_type = TCE_PCI;
}
