
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
typedef int resource_size_t ;


 int PAGE_SHIFT ;
 int VM_PAT ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ follow_phys (struct vm_area_struct*,unsigned long,int ,unsigned long*,int*) ;
 int free_pfn_range (int,unsigned long) ;

void untrack_pfn(struct vm_area_struct *vma, unsigned long pfn,
   unsigned long size)
{
 resource_size_t paddr;
 unsigned long prot;

 if (vma && !(vma->vm_flags & VM_PAT))
  return;


 paddr = (resource_size_t)pfn << PAGE_SHIFT;
 if (!paddr && !size) {
  if (follow_phys(vma, vma->vm_start, 0, &prot, &paddr)) {
   WARN_ON_ONCE(1);
   return;
  }

  size = vma->vm_end - vma->vm_start;
 }
 free_pfn_range(paddr, size);
 if (vma)
  vma->vm_flags &= ~VM_PAT;
}
