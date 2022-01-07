
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct vm_area_struct {unsigned long vm_pgoff; } ;
struct file {int dummy; } ;


 int EIO ;
 unsigned long PAGE_SHIFT ;
 unsigned long __pa (unsigned long) ;
 int mmap_mem (struct file*,struct vm_area_struct*) ;
 int pfn_valid (unsigned long) ;

__attribute__((used)) static int mmap_kmem(struct file *file, struct vm_area_struct *vma)
{
 unsigned long pfn;


 pfn = __pa((u64)vma->vm_pgoff << PAGE_SHIFT) >> PAGE_SHIFT;
 if (!pfn_valid(pfn))
  return -EIO;

 vma->vm_pgoff = pfn;
 return mmap_mem(file, vma);
}
