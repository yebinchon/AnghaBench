
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_BIT_MASK (int) ;
 int DMA_MAPPING_ERROR ;
 void* dma_direct_alloc_pages (struct device*,size_t,int *,int ,unsigned long) ;
 int dma_direct_free_pages (struct device*,size_t,void*,int ,unsigned long) ;
 int dma_map_area (struct device*,int ,size_t,int ,unsigned long) ;
 int flush_gart () ;
 int force_iommu ;
 unsigned long get_order (size_t) ;
 scalar_t__ unlikely (int) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static void *
gart_alloc_coherent(struct device *dev, size_t size, dma_addr_t *dma_addr,
      gfp_t flag, unsigned long attrs)
{
 void *vaddr;

 vaddr = dma_direct_alloc_pages(dev, size, dma_addr, flag, attrs);
 if (!vaddr ||
     !force_iommu || dev->coherent_dma_mask <= DMA_BIT_MASK(24))
  return vaddr;

 *dma_addr = dma_map_area(dev, virt_to_phys(vaddr), size,
   DMA_BIDIRECTIONAL, (1UL << get_order(size)) - 1);
 flush_gart();
 if (unlikely(*dma_addr == DMA_MAPPING_ERROR))
  goto out_free;
 return vaddr;
out_free:
 dma_direct_free_pages(dev, size, vaddr, *dma_addr, attrs);
 return ((void*)0);
}
