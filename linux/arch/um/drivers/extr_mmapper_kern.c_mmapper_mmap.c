
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_pgoff; int vm_end; int vm_start; int vm_page_prot; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int PAGE_SHIFT ;
 int mmapper_size ;
 int p_buf ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,int,int,int,int ) ;

__attribute__((used)) static int mmapper_mmap(struct file *file, struct vm_area_struct *vma)
{
 int ret = -EINVAL;
 int size;

 if (vma->vm_pgoff != 0)
  goto out;

 size = vma->vm_end - vma->vm_start;
 if (size > mmapper_size)
  return -EFAULT;





 if (remap_pfn_range(vma, vma->vm_start, p_buf >> PAGE_SHIFT, size,
       vma->vm_page_prot))
  goto out;
 ret = 0;
out:
 return ret;
}
