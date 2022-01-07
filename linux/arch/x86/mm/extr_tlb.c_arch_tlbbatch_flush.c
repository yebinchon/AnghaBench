
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_tlbflush_unmap_batch {int cpumask; } ;


 int TLB_LOCAL_SHOOTDOWN ;
 scalar_t__ cpumask_any_but (int *,int) ;
 int cpumask_clear (int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int flush_tlb_func_local (int *,int ) ;
 int flush_tlb_others (int *,int *) ;
 int full_flush_tlb_info ;
 int get_cpu () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lockdep_assert_irqs_enabled () ;
 scalar_t__ nr_cpu_ids ;
 int put_cpu () ;

void arch_tlbbatch_flush(struct arch_tlbflush_unmap_batch *batch)
{
 int cpu = get_cpu();

 if (cpumask_test_cpu(cpu, &batch->cpumask)) {
  lockdep_assert_irqs_enabled();
  local_irq_disable();
  flush_tlb_func_local(&full_flush_tlb_info, TLB_LOCAL_SHOOTDOWN);
  local_irq_enable();
 }

 if (cpumask_any_but(&batch->cpumask, cpu) < nr_cpu_ids)
  flush_tlb_others(&batch->cpumask, &full_flush_tlb_info);

 cpumask_clear(&batch->cpumask);

 put_cpu();
}
