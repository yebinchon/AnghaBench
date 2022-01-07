
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ dma_pfn_offset; } ;
typedef unsigned long dma_addr_t ;


 unsigned long PAGE_SHIFT ;
 int WARN_ON (int) ;
 int __free_pages (int ,int ) ;
 int get_order (size_t) ;
 int iounmap (void*) ;
 int pfn_to_page (unsigned long) ;

void arch_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 int order = get_order(size);
 unsigned long pfn = (dma_handle >> PAGE_SHIFT);
 int k;

 if (!WARN_ON(!dev))
  pfn += dev->dma_pfn_offset;

 for (k = 0; k < (1 << order); k++)
  __free_pages(pfn_to_page(pfn + k), 0);

 iounmap(vaddr);
}
