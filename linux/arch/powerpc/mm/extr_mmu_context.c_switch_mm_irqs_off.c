
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 int CPU_FTR_ALTIVEC ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpumask_set_cpu (int ,int ) ;
 int cpumask_test_cpu (int ,int ) ;
 int inc_mm_active_cpus (struct mm_struct*) ;
 int membarrier_arch_switch_mm (struct mm_struct*,struct mm_struct*,struct task_struct*) ;
 int mm_cpumask (struct mm_struct*) ;
 int radix_kvm_prefetch_workaround (struct mm_struct*) ;
 int smp_mb () ;
 int smp_processor_id () ;
 int switch_mm_pgdir (struct task_struct*,struct mm_struct*) ;
 int switch_mmu_context (struct mm_struct*,struct mm_struct*,struct task_struct*) ;

void switch_mm_irqs_off(struct mm_struct *prev, struct mm_struct *next,
   struct task_struct *tsk)
{
 bool new_on_cpu = 0;


 if (!cpumask_test_cpu(smp_processor_id(), mm_cpumask(next))) {
  cpumask_set_cpu(smp_processor_id(), mm_cpumask(next));
  inc_mm_active_cpus(next);
  smp_mb();

  new_on_cpu = 1;
 }


 switch_mm_pgdir(tsk, next);


 if (prev == next)
  return;





 if (cpu_has_feature(CPU_FTR_ALTIVEC))
  asm volatile ("dssall");

 if (new_on_cpu)
  radix_kvm_prefetch_workaround(next);
 else
  membarrier_arch_switch_mm(prev, next, tsk);





 switch_mmu_context(prev, next, tsk);
}
