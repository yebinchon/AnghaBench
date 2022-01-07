
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 size_t PAGE_SHIFT ;
 int __free_dma_pages (int ,int) ;
 int dma_size ;
 int get_count_order (size_t) ;
 int virt_to_phys (void*) ;

void arch_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 int order;

 if (!dma_size || !size)
  return;

 order = get_count_order(((size - 1) >> PAGE_SHIFT) + 1);

 __free_dma_pages(virt_to_phys(vaddr), order);
}
