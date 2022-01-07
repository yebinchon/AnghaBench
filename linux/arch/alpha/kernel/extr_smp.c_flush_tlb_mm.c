
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {scalar_t__* context; int mm_users; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int NR_CPUS ;
 int atomic_read (int *) ;
 int cpu_online (int) ;
 TYPE_1__* current ;
 int flush_tlb_current (struct mm_struct*) ;
 int ipi_flush_tlb_mm ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int ,struct mm_struct*,int) ;
 int smp_processor_id () ;

void
flush_tlb_mm(struct mm_struct *mm)
{
 preempt_disable();

 if (mm == current->active_mm) {
  flush_tlb_current(mm);
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

 smp_call_function(ipi_flush_tlb_mm, mm, 1);

 preempt_enable();
}
