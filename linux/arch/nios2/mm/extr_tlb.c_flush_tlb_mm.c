
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int context; } ;
typedef int mm_context_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 int flush_tlb_pid (unsigned long) ;
 unsigned long get_pid_from_context (int *) ;
 int memset (int *,int ,int) ;

void flush_tlb_mm(struct mm_struct *mm)
{
 if (current->mm == mm) {
  unsigned long mmu_pid = get_pid_from_context(&mm->context);
  flush_tlb_pid(mmu_pid);
 } else {
  memset(&mm->context, 0, sizeof(mm_context_t));
 }
}
