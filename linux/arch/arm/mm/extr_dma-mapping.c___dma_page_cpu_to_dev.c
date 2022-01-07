
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int dma_cache_maint_page (struct page*,unsigned long,size_t,int,int ) ;
 int dmac_map_area ;
 int outer_clean_range (scalar_t__,scalar_t__) ;
 int outer_inv_range (scalar_t__,scalar_t__) ;
 scalar_t__ page_to_phys (struct page*) ;

__attribute__((used)) static void __dma_page_cpu_to_dev(struct page *page, unsigned long off,
 size_t size, enum dma_data_direction dir)
{
 phys_addr_t paddr;

 dma_cache_maint_page(page, off, size, dir, dmac_map_area);

 paddr = page_to_phys(page) + off;
 if (dir == DMA_FROM_DEVICE) {
  outer_inv_range(paddr, paddr + size);
 } else {
  outer_clean_range(paddr, paddr + size);
 }

}
