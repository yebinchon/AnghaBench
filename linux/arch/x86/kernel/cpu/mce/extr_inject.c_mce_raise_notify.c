
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct mce {int inject_flags; scalar_t__ status; } ;


 int MCJ_EXCEPTION ;
 int NMI_DONE ;
 int NMI_HANDLED ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_test_cpu (int,int ) ;
 int injectm ;
 int mce_inject_cpumask ;
 int raise_exception (struct mce*,struct pt_regs*) ;
 int raise_poll (struct mce*) ;
 int smp_processor_id () ;
 struct mce* this_cpu_ptr (int *) ;

__attribute__((used)) static int mce_raise_notify(unsigned int cmd, struct pt_regs *regs)
{
 int cpu = smp_processor_id();
 struct mce *m = this_cpu_ptr(&injectm);
 if (!cpumask_test_cpu(cpu, mce_inject_cpumask))
  return NMI_DONE;
 cpumask_clear_cpu(cpu, mce_inject_cpumask);
 if (m->inject_flags & MCJ_EXCEPTION)
  raise_exception(m, regs);
 else if (m->status)
  raise_poll(m);
 return NMI_HANDLED;
}
