
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int IPI_CPU_STOP ;
 scalar_t__ SYSTEM_RUNNING ;
 unsigned long USEC_PER_SEC ;
 int cpu_online_mask ;
 int cpumask_clear_cpu (int ,int *) ;
 int cpumask_copy (int *,int ) ;
 int cpumask_pr_args (int ) ;
 int num_online_cpus () ;
 int pr_crit (char*) ;
 int pr_warn (char*,int ) ;
 int send_ipi_mask (int *,int ) ;
 int smp_processor_id () ;
 scalar_t__ system_state ;
 int udelay (int) ;

void smp_send_stop(void)
{
 unsigned long timeout;

 if (num_online_cpus() > 1) {
  cpumask_t mask;

  cpumask_copy(&mask, cpu_online_mask);
  cpumask_clear_cpu(smp_processor_id(), &mask);

  if (system_state <= SYSTEM_RUNNING)
   pr_crit("SMP: stopping secondary CPUs\n");
  send_ipi_mask(&mask, IPI_CPU_STOP);
 }


 timeout = USEC_PER_SEC;
 while (num_online_cpus() > 1 && timeout--)
  udelay(1);

 if (num_online_cpus() > 1)
  pr_warn("SMP: failed to stop secondary CPUs %*pbl\n",
      cpumask_pr_args(cpu_online_mask));
}
