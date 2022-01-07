
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; int vm_page_prot; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int VM_IO ;
 int VM_PFNMAP ;
 int VM_SHARED ;
 int pgprot_noncached (int ) ;
 int spufs_psmap_mmap_vmops ;

__attribute__((used)) static int spufs_psmap_mmap(struct file *file, struct vm_area_struct *vma)
{
 if (!(vma->vm_flags & VM_SHARED))
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 vma->vm_ops = &spufs_psmap_mmap_vmops;
 return 0;
}
