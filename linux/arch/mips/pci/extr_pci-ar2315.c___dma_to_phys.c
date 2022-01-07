
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ ar2315_dev_offset (struct device*) ;

phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dma_addr)
{
 return dma_addr - ar2315_dev_offset(dev);
}
