
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {scalar_t__ nip; } ;
struct TYPE_2__ {int soft_nmi_irqs; } ;


 int SPRN_DEC ;
 int __this_cpu_inc (int ) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int current ;
 int get_tb () ;
 scalar_t__ hardlockup_panic ;
 TYPE_1__ irq_stat ;
 int mtspr (int ,int) ;
 int nmi_enter () ;
 int nmi_exit () ;
 int nmi_panic (struct pt_regs*,char*) ;
 int per_cpu (int ,int) ;
 int pr_emerg (char*,int,int,...) ;
 int print_irqtrace_events (int ) ;
 int print_modules () ;
 int raw_smp_processor_id () ;
 int set_cpu_stuck (int,int) ;
 int show_regs (struct pt_regs*) ;
 scalar_t__ sysctl_hardlockup_all_cpu_backtrace ;
 int tb_to_ns (int) ;
 int trigger_allbutself_cpu_backtrace () ;
 int wd_cpus_enabled ;
 int wd_panic_timeout_tb ;
 int wd_smp_cpus_stuck ;
 int wd_smp_lock (unsigned long*) ;
 int wd_smp_unlock (unsigned long*) ;
 int wd_timer_tb ;

void soft_nmi_interrupt(struct pt_regs *regs)
{
 unsigned long flags;
 int cpu = raw_smp_processor_id();
 u64 tb;

 if (!cpumask_test_cpu(cpu, &wd_cpus_enabled))
  return;

 nmi_enter();

 __this_cpu_inc(irq_stat.soft_nmi_irqs);

 tb = get_tb();
 if (tb - per_cpu(wd_timer_tb, cpu) >= wd_panic_timeout_tb) {
  wd_smp_lock(&flags);
  if (cpumask_test_cpu(cpu, &wd_smp_cpus_stuck)) {
   wd_smp_unlock(&flags);
   goto out;
  }
  set_cpu_stuck(cpu, tb);

  pr_emerg("CPU %d self-detected hard LOCKUP @ %pS\n",
    cpu, (void *)regs->nip);
  pr_emerg("CPU %d TB:%lld, last heartbeat TB:%lld (%lldms ago)\n",
    cpu, tb, per_cpu(wd_timer_tb, cpu),
    tb_to_ns(tb - per_cpu(wd_timer_tb, cpu)) / 1000000);
  print_modules();
  print_irqtrace_events(current);
  show_regs(regs);

  wd_smp_unlock(&flags);

  if (sysctl_hardlockup_all_cpu_backtrace)
   trigger_allbutself_cpu_backtrace();

  if (hardlockup_panic)
   nmi_panic(regs, "Hard LOCKUP");
 }
 if (wd_panic_timeout_tb < 0x7fffffff)
  mtspr(SPRN_DEC, wd_panic_timeout_tb);

out:
 nmi_exit();
}
