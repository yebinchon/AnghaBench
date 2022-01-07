
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENXIO ;
 scalar_t__ dma_mmap_from_dev_coherent (struct device*,struct vm_area_struct*,void*,size_t,int*) ;
 scalar_t__ dma_mmap_from_global_coherent (struct vm_area_struct*,void*,size_t,int*) ;

__attribute__((used)) static int arm_nommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
         void *cpu_addr, dma_addr_t dma_addr, size_t size,
         unsigned long attrs)
{
 int ret;

 if (dma_mmap_from_global_coherent(vma, cpu_addr, size, &ret))
  return ret;
 if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
  return ret;
 return -ENXIO;
}
