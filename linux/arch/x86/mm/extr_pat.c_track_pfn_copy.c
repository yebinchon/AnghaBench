
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; } ;
typedef int resource_size_t ;
typedef int pgprot_t ;


 int EINVAL ;
 int VM_PAT ;
 int WARN_ON_ONCE (int) ;
 int __pgprot (unsigned long) ;
 scalar_t__ follow_phys (struct vm_area_struct*,unsigned long,int ,unsigned long*,int *) ;
 int reserve_pfn_range (int ,unsigned long,int *,int) ;

int track_pfn_copy(struct vm_area_struct *vma)
{
 resource_size_t paddr;
 unsigned long prot;
 unsigned long vma_size = vma->vm_end - vma->vm_start;
 pgprot_t pgprot;

 if (vma->vm_flags & VM_PAT) {




  if (follow_phys(vma, vma->vm_start, 0, &prot, &paddr)) {
   WARN_ON_ONCE(1);
   return -EINVAL;
  }
  pgprot = __pgprot(prot);
  return reserve_pfn_range(paddr, vma_size, &pgprot, 1);
 }

 return 0;
}
