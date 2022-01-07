
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int IPI_CPU_STOP ;
 unsigned long USEC_PER_SEC ;
 int cpu_online_mask ;
 int cpumask_clear_cpu (int ,struct cpumask*) ;
 int cpumask_copy (struct cpumask*,int ) ;
 int cpumask_empty (struct cpumask*) ;
 int num_online_cpus () ;
 int pr_warn (char*) ;
 int smp_cross_call (struct cpumask*,int ) ;
 int smp_processor_id () ;
 int udelay (int) ;

void smp_send_stop(void)
{
 unsigned long timeout;
 struct cpumask mask;

 cpumask_copy(&mask, cpu_online_mask);
 cpumask_clear_cpu(smp_processor_id(), &mask);
 if (!cpumask_empty(&mask))
  smp_cross_call(&mask, IPI_CPU_STOP);


 timeout = USEC_PER_SEC;
 while (num_online_cpus() > 1 && timeout--)
  udelay(1);

 if (num_online_cpus() > 1)
  pr_warn("SMP: failed to stop secondary CPUs\n");
}
