
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_TO_DEVICE ;
 size_t PAGE_SIZE ;
 int PG_dcache_clean ;
 int dma_cache_maint_page (struct page*,unsigned long,size_t,int,int ) ;
 int dmac_unmap_area ;
 int outer_inv_range (scalar_t__,scalar_t__) ;
 unsigned long page_to_pfn (struct page*) ;
 scalar_t__ page_to_phys (struct page*) ;
 struct page* pfn_to_page (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __dma_page_dev_to_cpu(struct page *page, unsigned long off,
 size_t size, enum dma_data_direction dir)
{
 phys_addr_t paddr = page_to_phys(page) + off;



 if (dir != DMA_TO_DEVICE) {
  outer_inv_range(paddr, paddr + size);

  dma_cache_maint_page(page, off, size, dir, dmac_unmap_area);
 }




 if (dir != DMA_TO_DEVICE && size >= PAGE_SIZE) {
  unsigned long pfn;
  size_t left = size;

  pfn = page_to_pfn(page) + off / PAGE_SIZE;
  off %= PAGE_SIZE;
  if (off) {
   pfn++;
   left -= PAGE_SIZE - off;
  }
  while (left >= PAGE_SIZE) {
   page = pfn_to_page(pfn++);
   set_bit(PG_dcache_clean, &page->flags);
   left -= PAGE_SIZE;
  }
 }
}
