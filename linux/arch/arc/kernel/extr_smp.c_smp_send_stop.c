
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int IPI_CPU_STOP ;
 int cpu_online_mask ;
 int cpumask_clear_cpu (int ,struct cpumask*) ;
 int cpumask_copy (struct cpumask*,int ) ;
 int ipi_send_msg (struct cpumask*,int ) ;
 int smp_processor_id () ;

void smp_send_stop(void)
{
 struct cpumask targets;
 cpumask_copy(&targets, cpu_online_mask);
 cpumask_clear_cpu(smp_processor_id(), &targets);
 ipi_send_msg(&targets, IPI_CPU_STOP);
}
