
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int inject_flags; } ;


 int MCJ_EXCEPTION ;
 int cpumask_clear_cpu (int,int ) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 int injectm ;
 int mce_inject_cpumask ;
 int raise_exception (struct mce*,int *) ;
 int smp_processor_id () ;
 struct mce* this_cpu_ptr (int *) ;

__attribute__((used)) static void mce_irq_ipi(void *info)
{
 int cpu = smp_processor_id();
 struct mce *m = this_cpu_ptr(&injectm);

 if (cpumask_test_cpu(cpu, mce_inject_cpumask) &&
   m->inject_flags & MCJ_EXCEPTION) {
  cpumask_clear_cpu(cpu, mce_inject_cpumask);
  raise_exception(m, ((void*)0));
 }
}
