
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_start; size_t vm_end; size_t vm_pgoff; int vm_page_prot; int vm_flags; } ;
struct file {int dummy; } ;
typedef int pgprot_t ;


 int EINVAL ;
 size_t PAGE_SHIFT ;
 int opal_prd_range_is_valid (size_t,size_t) ;
 int phys_mem_access_prot (struct file*,size_t,size_t,int ) ;
 int pr_devel (char*,size_t,size_t,size_t,int ) ;
 int remap_pfn_range (struct vm_area_struct*,size_t,size_t,size_t,int ) ;

__attribute__((used)) static int opal_prd_mmap(struct file *file, struct vm_area_struct *vma)
{
 size_t addr, size;
 pgprot_t page_prot;
 int rc;

 pr_devel("opal_prd_mmap(0x%016lx, 0x%016lx, 0x%lx, 0x%lx)\n",
   vma->vm_start, vma->vm_end, vma->vm_pgoff,
   vma->vm_flags);

 addr = vma->vm_pgoff << PAGE_SHIFT;
 size = vma->vm_end - vma->vm_start;


 if (!opal_prd_range_is_valid(addr, size))
  return -EINVAL;

 page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
      size, vma->vm_page_prot);

 rc = remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff, size,
    page_prot);

 return rc;
}
