
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* sync_single_for_cpu ) (struct device*,int ,size_t,int) ;} ;


 int __dmabounce_sync_for_cpu (struct device*,int ,size_t,int) ;
 TYPE_1__ arm_dma_ops ;
 int stub1 (struct device*,int ,size_t,int) ;

__attribute__((used)) static void dmabounce_sync_for_cpu(struct device *dev,
  dma_addr_t handle, size_t size, enum dma_data_direction dir)
{
 if (!__dmabounce_sync_for_cpu(dev, handle, size, dir))
  return;

 arm_dma_ops.sync_single_for_cpu(dev, handle, size, dir);
}
