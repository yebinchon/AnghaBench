
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENXIO ;
 unsigned long PAGE_ALIGN (size_t) ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ dma_mmap_from_dev_coherent (struct device*,struct vm_area_struct*,void*,size_t,int*) ;
 unsigned long dma_to_pfn (struct device*,int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,unsigned long,scalar_t__,int ) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int __arm_dma_mmap(struct device *dev, struct vm_area_struct *vma,
   void *cpu_addr, dma_addr_t dma_addr, size_t size,
   unsigned long attrs)
{
 int ret = -ENXIO;
 unsigned long nr_vma_pages = vma_pages(vma);
 unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
 unsigned long pfn = dma_to_pfn(dev, dma_addr);
 unsigned long off = vma->vm_pgoff;

 if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
  return ret;

 if (off < nr_pages && nr_vma_pages <= (nr_pages - off)) {
  ret = remap_pfn_range(vma, vma->vm_start,
          pfn + off,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot);
 }

 return ret;
}
