
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_pgoff; int vm_page_prot; int * vm_ops; } ;
struct file {int dummy; } ;
typedef int phys_addr_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOSYS ;
 int EPERM ;
 int PAGE_SHIFT ;
 int mmap_mem_ops ;
 int phys_mem_access_prot (struct file*,int,size_t,int ) ;
 int phys_mem_access_prot_allowed (struct file*,int,size_t,int *) ;
 int private_mapping_ok (struct vm_area_struct*) ;
 int range_is_allowed (int,size_t) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,size_t,int,size_t,int ) ;
 int valid_mmap_phys_addr_range (int,size_t) ;

__attribute__((used)) static int mmap_mem(struct file *file, struct vm_area_struct *vma)
{
 size_t size = vma->vm_end - vma->vm_start;
 phys_addr_t offset = (phys_addr_t)vma->vm_pgoff << PAGE_SHIFT;


 if (offset >> PAGE_SHIFT != vma->vm_pgoff)
  return -EINVAL;


 if (offset + (phys_addr_t)size - 1 < offset)
  return -EINVAL;

 if (!valid_mmap_phys_addr_range(vma->vm_pgoff, size))
  return -EINVAL;

 if (!private_mapping_ok(vma))
  return -ENOSYS;

 if (!range_is_allowed(vma->vm_pgoff, size))
  return -EPERM;

 if (!phys_mem_access_prot_allowed(file, vma->vm_pgoff, size,
      &vma->vm_page_prot))
  return -EINVAL;

 vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
       size,
       vma->vm_page_prot);

 vma->vm_ops = &mmap_mem_ops;


 if (remap_pfn_range(vma,
       vma->vm_start,
       vma->vm_pgoff,
       size,
       vma->vm_page_prot)) {
  return -EAGAIN;
 }
 return 0;
}
