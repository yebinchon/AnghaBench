
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int IPI_CPU_STOP ;
 int cpu_online_mask ;
 int cpumask_clear_cpu (int ,struct cpumask*) ;
 int cpumask_copy (struct cpumask*,int ) ;
 int send_ipi_message (struct cpumask*,int ) ;
 int smp_processor_id () ;

void smp_send_stop(void)
{
 struct cpumask targets;

 cpumask_copy(&targets, cpu_online_mask);
 cpumask_clear_cpu(smp_processor_id(), &targets);
 send_ipi_message(&targets, IPI_CPU_STOP);
}
