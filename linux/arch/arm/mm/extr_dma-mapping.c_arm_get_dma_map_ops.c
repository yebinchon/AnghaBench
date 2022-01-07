
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int dummy; } ;


 int CONFIG_ARM_LPAE ;
 scalar_t__ IS_ENABLED (int ) ;
 struct dma_map_ops const arm_coherent_dma_ops ;
 struct dma_map_ops const arm_dma_ops ;

__attribute__((used)) static const struct dma_map_ops *arm_get_dma_map_ops(bool coherent)
{







 if (IS_ENABLED(CONFIG_ARM_LPAE))
  return ((void*)0);
 return coherent ? &arm_coherent_dma_ops : &arm_dma_ops;
}
