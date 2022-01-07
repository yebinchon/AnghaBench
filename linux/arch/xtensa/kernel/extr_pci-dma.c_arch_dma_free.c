
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 unsigned long PAGE_ALIGN (size_t) ;
 unsigned long PAGE_SHIFT ;
 int PHYS_PFN (int ) ;
 int __free_pages (struct page*,int ) ;
 int dma_common_free_remap (void*,size_t) ;
 int dma_release_from_contiguous (struct device*,struct page*,unsigned long) ;
 int dma_to_phys (struct device*,int ) ;
 int get_order (size_t) ;
 struct page* pfn_to_page (int ) ;
 int platform_vaddr_to_cached (void*) ;
 scalar_t__ platform_vaddr_uncached (void*) ;
 struct page* virt_to_page (int ) ;

void arch_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 unsigned long count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 struct page *page;

 if (platform_vaddr_uncached(vaddr)) {
  page = virt_to_page(platform_vaddr_to_cached(vaddr));
 } else {



  page = pfn_to_page(PHYS_PFN(dma_to_phys(dev, dma_handle)));
 }

 if (!dma_release_from_contiguous(dev, page, count))
  __free_pages(page, get_order(size));
}
