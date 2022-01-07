
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;



phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dma_addr)
{
 if (dma_addr > 0x8fffffff)
  return dma_addr;
 return dma_addr & 0x0fffffff;
}
