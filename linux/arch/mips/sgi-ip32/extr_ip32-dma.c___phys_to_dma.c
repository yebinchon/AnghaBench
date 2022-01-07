
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 scalar_t__ CRIME_HI_MEM_BASE ;
 int RAM_OFFSET_MASK ;

dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
{
 dma_addr_t dma_addr = paddr & RAM_OFFSET_MASK;

 if (!dev)
  dma_addr += CRIME_HI_MEM_BASE;
 return dma_addr;
}
