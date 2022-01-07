
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_direct_free_pages (struct device*,size_t,void*,int ,unsigned long) ;
 int vdma_free (int ) ;

__attribute__((used)) static void jazz_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 vdma_free(dma_handle);
 dma_direct_free_pages(dev, size, vaddr, dma_handle, attrs);
}
