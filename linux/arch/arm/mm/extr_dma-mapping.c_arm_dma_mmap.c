
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int __arm_dma_mmap (struct device*,struct vm_area_struct*,void*,int ,size_t,unsigned long) ;
 int __get_dma_pgprot (unsigned long,int ) ;

int arm_dma_mmap(struct device *dev, struct vm_area_struct *vma,
   void *cpu_addr, dma_addr_t dma_addr, size_t size,
   unsigned long attrs)
{
 vma->vm_page_prot = __get_dma_pgprot(attrs, vma->vm_page_prot);
 return __arm_dma_mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
}
