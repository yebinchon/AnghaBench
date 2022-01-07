
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_direct_free_pages (struct device*,size_t,void*,int ,unsigned long) ;

void arch_dma_free(struct device *dev, size_t size, void *cpu_addr,
  dma_addr_t dma_addr, unsigned long attrs)
{
 dma_direct_free_pages(dev, size, cpu_addr, dma_addr, attrs);
}
