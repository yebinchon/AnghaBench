
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int cpuidle_coupled_poke_pending ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

__attribute__((used)) static int cpuidle_coupled_clear_pokes(int cpu)
{
 if (!cpumask_test_cpu(cpu, &cpuidle_coupled_poke_pending))
  return 0;

 local_irq_enable();
 while (cpumask_test_cpu(cpu, &cpuidle_coupled_poke_pending))
  cpu_relax();
 local_irq_disable();

 return 1;
}
