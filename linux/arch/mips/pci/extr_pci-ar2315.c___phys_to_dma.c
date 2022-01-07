
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ ar2315_dev_offset (struct device*) ;

dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
{
 return paddr + ar2315_dev_offset(dev);
}
