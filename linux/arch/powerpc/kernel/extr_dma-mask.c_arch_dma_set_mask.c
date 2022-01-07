
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* dma_set_mask ) (struct device*,int ) ;} ;


 TYPE_1__ ppc_md ;
 int stub1 (struct device*,int ) ;

void arch_dma_set_mask(struct device *dev, u64 dma_mask)
{
 if (ppc_md.dma_set_mask)
  ppc_md.dma_set_mask(dev, dma_mask);
}
