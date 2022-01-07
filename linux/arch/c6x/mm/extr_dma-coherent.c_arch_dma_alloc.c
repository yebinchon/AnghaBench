
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 size_t PAGE_SHIFT ;
 int __alloc_dma_pages (int) ;
 int dma_size ;
 int get_count_order (size_t) ;
 int memset (void*,int ,int) ;
 void* phys_to_virt (int ) ;

void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
  gfp_t gfp, unsigned long attrs)
{
 void *ret;
 u32 paddr;
 int order;

 if (!dma_size || !size)
  return ((void*)0);

 order = get_count_order(((size - 1) >> PAGE_SHIFT) + 1);

 paddr = __alloc_dma_pages(order);

 if (handle)
  *handle = paddr;

 if (!paddr)
  return ((void*)0);

 ret = phys_to_virt(paddr);
 memset(ret, 0, 1 << order);
 return ret;
}
