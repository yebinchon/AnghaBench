
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int __arm_dma_mmap (struct device*,struct vm_area_struct*,void*,int ,size_t,unsigned long) ;

__attribute__((used)) static int arm_coherent_dma_mmap(struct device *dev, struct vm_area_struct *vma,
   void *cpu_addr, dma_addr_t dma_addr, size_t size,
   unsigned long attrs)
{
 return __arm_dma_mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
}
