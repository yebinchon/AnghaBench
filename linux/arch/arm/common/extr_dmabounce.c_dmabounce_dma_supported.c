
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ dmabounce; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {int (* dma_supported ) (struct device*,int ) ;} ;


 TYPE_2__ arm_dma_ops ;
 int stub1 (struct device*,int ) ;

__attribute__((used)) static int dmabounce_dma_supported(struct device *dev, u64 dma_mask)
{
 if (dev->archdata.dmabounce)
  return 0;

 return arm_dma_ops.dma_supported(dev, dma_mask);
}
