
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dma_length; int dma_address; } ;
struct iommu_table {TYPE_1__* it_ops; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* flush ) (struct iommu_table*) ;} ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int IOMMU_PAGE_SIZE (struct iommu_table*) ;
 int __iommu_free (struct iommu_table*,int ,unsigned int) ;
 unsigned int iommu_num_pages (int ,int ,int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int stub1 (struct iommu_table*) ;

void ppc_iommu_unmap_sg(struct iommu_table *tbl, struct scatterlist *sglist,
   int nelems, enum dma_data_direction direction,
   unsigned long attrs)
{
 struct scatterlist *sg;

 BUG_ON(direction == DMA_NONE);

 if (!tbl)
  return;

 sg = sglist;
 while (nelems--) {
  unsigned int npages;
  dma_addr_t dma_handle = sg->dma_address;

  if (sg->dma_length == 0)
   break;
  npages = iommu_num_pages(dma_handle, sg->dma_length,
      IOMMU_PAGE_SIZE(tbl));
  __iommu_free(tbl, dma_handle, npages);
  sg = sg_next(sg);
 }





 if (tbl->it_ops->flush)
  tbl->it_ops->flush(tbl);
}
