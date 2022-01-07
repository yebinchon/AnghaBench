
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int __dma_supported (struct device*,int ,int) ;

int arm_dma_supported(struct device *dev, u64 mask)
{
 return __dma_supported(dev, mask, 0);
}
