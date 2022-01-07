
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; int vm_pgoff; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;
 int pgprot_noncached (int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static int arc_hl_mmap(struct file *fp, struct vm_area_struct *vma)
{
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 if (io_remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot)) {
  pr_warn("Hostlink buffer mmap ERROR\n");
  return -EAGAIN;
 }
 return 0;
}
