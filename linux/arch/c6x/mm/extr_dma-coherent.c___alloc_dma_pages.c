
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAGE_SHIFT ;
 int bitmap_find_free_region (int ,int ,int) ;
 int dma_base ;
 int dma_bitmap ;
 int dma_lock ;
 int dma_pages ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline u32 __alloc_dma_pages(int order)
{
 unsigned long flags;
 u32 pos;

 spin_lock_irqsave(&dma_lock, flags);
 pos = bitmap_find_free_region(dma_bitmap, dma_pages, order);
 spin_unlock_irqrestore(&dma_lock, flags);

 return dma_base + (pos << PAGE_SHIFT);
}
