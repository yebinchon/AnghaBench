
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; struct vm_area_struct* vm_next; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 int SIGSEGV ;
 int VM_MPX ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int force_sig (int ) ;
 int kernel_managing_mpx_tables (int ) ;
 int mpx_unmap_tables (struct mm_struct*,unsigned long,unsigned long) ;

void mpx_notify_unmap(struct mm_struct *mm, unsigned long start,
        unsigned long end)
{
 struct vm_area_struct *vma;
 int ret;





 if (!kernel_managing_mpx_tables(current->mm))
  return;
 vma = find_vma(mm, start);
 while (vma && vma->vm_start < end) {
  if (vma->vm_flags & VM_MPX)
   return;
  vma = vma->vm_next;
 }

 ret = mpx_unmap_tables(mm, start, end);
 if (ret)
  force_sig(SIGSEGV);
}
