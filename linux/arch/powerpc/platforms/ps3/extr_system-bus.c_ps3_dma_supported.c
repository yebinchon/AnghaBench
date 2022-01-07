
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device {int dummy; } ;


 scalar_t__ DMA_BIT_MASK (int) ;

__attribute__((used)) static int ps3_dma_supported(struct device *_dev, u64 mask)
{
 return mask >= DMA_BIT_MASK(32);
}
