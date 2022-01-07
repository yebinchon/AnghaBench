
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;


 int pnv_pci_ioda2_tce_invalidate (struct iommu_table*,long,long,int) ;
 int pnv_tce_free (struct iommu_table*,long,long) ;

__attribute__((used)) static void pnv_ioda2_tce_free(struct iommu_table *tbl, long index,
  long npages)
{
 pnv_tce_free(tbl, index, npages);

 pnv_pci_ioda2_tce_invalidate(tbl, index, npages, 0);
}
