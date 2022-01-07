
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int context; } ;


 scalar_t__ PAGE_SIZE ;
 int flush_tlb_one_pid (unsigned long,unsigned long) ;
 unsigned long get_pid_from_context (int *) ;

void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
   unsigned long end)
{
 unsigned long mmu_pid = get_pid_from_context(&vma->vm_mm->context);

 while (start < end) {
  flush_tlb_one_pid(start, mmu_pid);
  start += PAGE_SIZE;
 }
}
