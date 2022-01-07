
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {scalar_t__* context; int mm_users; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int NR_CPUS ;
 int VM_EXEC ;
 int __load_new_mm_context (struct mm_struct*) ;
 int atomic_read (int *) ;
 int cpu_online (int) ;
 TYPE_1__* current ;
 int ipi_flush_icache_page ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int ,struct mm_struct*,int) ;
 int smp_processor_id () ;

void
flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
   unsigned long addr, int len)
{
 struct mm_struct *mm = vma->vm_mm;

 if ((vma->vm_flags & VM_EXEC) == 0)
  return;

 preempt_disable();

 if (mm == current->active_mm) {
  __load_new_mm_context(mm);
  if (atomic_read(&mm->mm_users) <= 1) {
   int cpu, this_cpu = smp_processor_id();
   for (cpu = 0; cpu < NR_CPUS; cpu++) {
    if (!cpu_online(cpu) || cpu == this_cpu)
     continue;
    if (mm->context[cpu])
     mm->context[cpu] = 0;
   }
   preempt_enable();
   return;
  }
 }

 smp_call_function(ipi_flush_icache_page, mm, 1);

 preempt_enable();
}
