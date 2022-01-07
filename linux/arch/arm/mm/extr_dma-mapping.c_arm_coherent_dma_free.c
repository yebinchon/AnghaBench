
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int __arm_dma_free (struct device*,size_t,void*,int ,unsigned long,int) ;

__attribute__((used)) static void arm_coherent_dma_free(struct device *dev, size_t size, void *cpu_addr,
      dma_addr_t handle, unsigned long attrs)
{
 __arm_dma_free(dev, size, cpu_addr, handle, attrs, 1);
}
