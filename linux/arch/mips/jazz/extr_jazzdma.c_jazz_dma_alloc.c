
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_MAPPING_ERROR ;
 void* dma_direct_alloc_pages (struct device*,size_t,int *,int ,unsigned long) ;
 int dma_direct_free_pages (struct device*,size_t,void*,int ,unsigned long) ;
 int vdma_alloc (int ,size_t) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static void *jazz_dma_alloc(struct device *dev, size_t size,
  dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
 void *ret;

 ret = dma_direct_alloc_pages(dev, size, dma_handle, gfp, attrs);
 if (!ret)
  return ((void*)0);

 *dma_handle = vdma_alloc(virt_to_phys(ret), size);
 if (*dma_handle == DMA_MAPPING_ERROR) {
  dma_direct_free_pages(dev, size, ret, *dma_handle, attrs);
  return ((void*)0);
 }

 return ret;
}
