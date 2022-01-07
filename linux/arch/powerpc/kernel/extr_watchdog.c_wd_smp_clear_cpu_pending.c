
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;


 int cpumask_andnot (int *,int *,int *) ;
 int cpumask_clear_cpu (int,int *) ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_test_cpu (int,int *) ;
 int current ;
 int dump_stack () ;
 struct pt_regs* get_irq_regs () ;
 int pr_emerg (char*,int,int ) ;
 int print_irqtrace_events (int ) ;
 int show_regs (struct pt_regs*) ;
 scalar_t__ unlikely (int ) ;
 int wd_cpus_enabled ;
 int wd_smp_cpus_pending ;
 int wd_smp_cpus_stuck ;
 int wd_smp_last_reset_tb ;
 int wd_smp_lock (unsigned long*) ;
 int wd_smp_unlock (unsigned long*) ;

__attribute__((used)) static void wd_smp_clear_cpu_pending(int cpu, u64 tb)
{
 if (!cpumask_test_cpu(cpu, &wd_smp_cpus_pending)) {
  if (unlikely(cpumask_test_cpu(cpu, &wd_smp_cpus_stuck))) {
   struct pt_regs *regs = get_irq_regs();
   unsigned long flags;

   wd_smp_lock(&flags);

   pr_emerg("CPU %d became unstuck TB:%lld\n",
     cpu, tb);
   print_irqtrace_events(current);
   if (regs)
    show_regs(regs);
   else
    dump_stack();

   cpumask_clear_cpu(cpu, &wd_smp_cpus_stuck);
   wd_smp_unlock(&flags);
  }
  return;
 }
 cpumask_clear_cpu(cpu, &wd_smp_cpus_pending);
 if (cpumask_empty(&wd_smp_cpus_pending)) {
  unsigned long flags;

  wd_smp_lock(&flags);
  if (cpumask_empty(&wd_smp_cpus_pending)) {
   wd_smp_last_reset_tb = tb;
   cpumask_andnot(&wd_smp_cpus_pending,
     &wd_cpus_enabled,
     &wd_smp_cpus_stuck);
  }
  wd_smp_unlock(&flags);
 }
}
