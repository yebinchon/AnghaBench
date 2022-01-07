
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* dma_direct_alloc_pages (struct device*,size_t,int *,int ,unsigned long) ;

void *arch_dma_alloc(struct device *dev, size_t size,
  dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
 return dma_direct_alloc_pages(dev, size, dma_handle, gfp, attrs);
}
