
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int dma_direct_free_pages (struct device*,size_t,void*,int ,unsigned long) ;
 int gart_unmap_page (struct device*,int ,size_t,int ,int ) ;

__attribute__((used)) static void
gart_free_coherent(struct device *dev, size_t size, void *vaddr,
     dma_addr_t dma_addr, unsigned long attrs)
{
 gart_unmap_page(dev, dma_addr, size, DMA_BIDIRECTIONAL, 0);
 dma_direct_free_pages(dev, size, vaddr, dma_addr, attrs);
}
