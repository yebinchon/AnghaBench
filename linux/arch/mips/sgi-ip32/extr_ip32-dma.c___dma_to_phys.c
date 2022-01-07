
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 scalar_t__ CRIME_HI_MEM_BASE ;
 int RAM_OFFSET_MASK ;

phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dma_addr)
{
 phys_addr_t paddr = dma_addr & RAM_OFFSET_MASK;

 if (dma_addr >= 256*1024*1024)
  paddr += CRIME_HI_MEM_BASE;
 return paddr;
}
