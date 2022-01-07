
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;

__attribute__((used)) static u64 ibmebus_dma_get_required_mask(struct device *dev)
{
 return DMA_BIT_MASK(64);
}
