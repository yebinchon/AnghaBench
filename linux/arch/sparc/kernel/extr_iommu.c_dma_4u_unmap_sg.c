
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {scalar_t__ strbuf_enabled; } ;
struct scatterlist {unsigned int dma_length; int dma_address; } ;
struct TYPE_4__ {unsigned long table_map_base; } ;
struct iommu {int lock; TYPE_2__ tbl; int * page_table; } ;
struct TYPE_3__ {struct strbuf* stc; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef int iopte_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 unsigned long DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_NONE ;
 int IOMMU_ERROR_CODE ;
 int IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 int IO_PAGE_SIZE ;
 unsigned long fetch_sg_ctx (struct iommu*,struct scatterlist*) ;
 int iommu_free_ctx (struct iommu*,unsigned long) ;
 unsigned long iommu_num_pages (int ,unsigned int,int ) ;
 int iommu_tbl_range_free (TYPE_2__*,int ,unsigned long,int ) ;
 int iopte_make_dummy (struct iommu*,int *) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strbuf_flush (struct strbuf*,struct iommu*,int ,unsigned long,unsigned long,int) ;

__attribute__((used)) static void dma_4u_unmap_sg(struct device *dev, struct scatterlist *sglist,
       int nelems, enum dma_data_direction direction,
       unsigned long attrs)
{
 unsigned long flags, ctx;
 struct scatterlist *sg;
 struct strbuf *strbuf;
 struct iommu *iommu;

 BUG_ON(direction == DMA_NONE);

 iommu = dev->archdata.iommu;
 strbuf = dev->archdata.stc;

 ctx = fetch_sg_ctx(iommu, sglist);

 spin_lock_irqsave(&iommu->lock, flags);

 sg = sglist;
 while (nelems--) {
  dma_addr_t dma_handle = sg->dma_address;
  unsigned int len = sg->dma_length;
  unsigned long npages, entry;
  iopte_t *base;
  int i;

  if (!len)
   break;
  npages = iommu_num_pages(dma_handle, len, IO_PAGE_SIZE);

  entry = ((dma_handle - iommu->tbl.table_map_base)
    >> IO_PAGE_SHIFT);
  base = iommu->page_table + entry;

  dma_handle &= IO_PAGE_MASK;
  if (strbuf->strbuf_enabled && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
   strbuf_flush(strbuf, iommu, dma_handle, ctx,
         npages, direction);

  for (i = 0; i < npages; i++)
   iopte_make_dummy(iommu, base + i);

  iommu_tbl_range_free(&iommu->tbl, dma_handle, npages,
         IOMMU_ERROR_CODE);
  sg = sg_next(sg);
 }

 iommu_free_ctx(iommu, ctx);

 spin_unlock_irqrestore(&iommu->lock, flags);
}
