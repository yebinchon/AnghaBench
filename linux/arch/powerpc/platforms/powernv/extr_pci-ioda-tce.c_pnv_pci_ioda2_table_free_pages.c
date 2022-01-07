
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {unsigned long it_level_size; unsigned long it_size; int it_indirect_levels; int * it_userspace; scalar_t__ it_base; } ;
typedef int __be64 ;


 int pnv_pci_ioda2_table_do_free_pages (int *,unsigned long const,int ) ;

void pnv_pci_ioda2_table_free_pages(struct iommu_table *tbl)
{
 const unsigned long size = tbl->it_indirect_levels ?
   tbl->it_level_size : tbl->it_size;

 if (!tbl->it_size)
  return;

 pnv_pci_ioda2_table_do_free_pages((__be64 *)tbl->it_base, size,
   tbl->it_indirect_levels);
 if (tbl->it_userspace) {
  pnv_pci_ioda2_table_do_free_pages(tbl->it_userspace, size,
    tbl->it_indirect_levels);
 }
}
