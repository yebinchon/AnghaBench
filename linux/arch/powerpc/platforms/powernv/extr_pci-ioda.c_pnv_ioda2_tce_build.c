
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int pnv_pci_ioda2_tce_invalidate (struct iommu_table*,long,long,int) ;
 int pnv_tce_build (struct iommu_table*,long,long,unsigned long,int,unsigned long) ;

__attribute__((used)) static int pnv_ioda2_tce_build(struct iommu_table *tbl, long index,
  long npages, unsigned long uaddr,
  enum dma_data_direction direction,
  unsigned long attrs)
{
 int ret = pnv_tce_build(tbl, index, npages, uaddr, direction,
   attrs);

 if (!ret)
  pnv_pci_ioda2_tce_invalidate(tbl, index, npages, 0);

 return ret;
}
