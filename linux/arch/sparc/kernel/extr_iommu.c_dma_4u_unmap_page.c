
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {scalar_t__ strbuf_enabled; } ;
struct TYPE_4__ {unsigned long table_map_base; } ;
struct iommu {TYPE_2__ tbl; int lock; scalar_t__ iommu_ctxflush; int * page_table; } ;
struct TYPE_3__ {struct strbuf* stc; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef int iopte_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 unsigned long DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_NONE ;
 int IOMMU_ERROR_CODE ;
 unsigned long IOPTE_CONTEXT ;
 unsigned long IO_PAGE_ALIGN (unsigned long) ;
 unsigned long IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 int WARN_ON (int) ;
 int iommu_free_ctx (struct iommu*,unsigned long) ;
 int iommu_tbl_range_free (TYPE_2__*,unsigned long,unsigned long,int ) ;
 int iopte_make_dummy (struct iommu*,int *) ;
 unsigned long iopte_val (int ) ;
 scalar_t__ printk_ratelimit () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strbuf_flush (struct strbuf*,struct iommu*,unsigned long,unsigned long,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dma_4u_unmap_page(struct device *dev, dma_addr_t bus_addr,
         size_t sz, enum dma_data_direction direction,
         unsigned long attrs)
{
 struct iommu *iommu;
 struct strbuf *strbuf;
 iopte_t *base;
 unsigned long flags, npages, ctx, i;

 if (unlikely(direction == DMA_NONE)) {
  if (printk_ratelimit())
   WARN_ON(1);
  return;
 }

 iommu = dev->archdata.iommu;
 strbuf = dev->archdata.stc;

 npages = IO_PAGE_ALIGN(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
 npages >>= IO_PAGE_SHIFT;
 base = iommu->page_table +
  ((bus_addr - iommu->tbl.table_map_base) >> IO_PAGE_SHIFT);
 bus_addr &= IO_PAGE_MASK;

 spin_lock_irqsave(&iommu->lock, flags);


 ctx = 0;
 if (iommu->iommu_ctxflush)
  ctx = (iopte_val(*base) & IOPTE_CONTEXT) >> 47UL;


 if (strbuf->strbuf_enabled && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
  strbuf_flush(strbuf, iommu, bus_addr, ctx,
        npages, direction);


 for (i = 0; i < npages; i++)
  iopte_make_dummy(iommu, base + i);

 iommu_free_ctx(iommu, ctx);
 spin_unlock_irqrestore(&iommu->lock, flags);

 iommu_tbl_range_free(&iommu->tbl, bus_addr, npages, IOMMU_ERROR_CODE);
}
