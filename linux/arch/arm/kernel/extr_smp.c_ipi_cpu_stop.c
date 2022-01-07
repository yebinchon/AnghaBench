
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYSTEM_RUNNING ;
 int cpu_relax () ;
 int dump_stack () ;
 int local_fiq_disable () ;
 int local_irq_disable () ;
 int pr_crit (char*,unsigned int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int set_cpu_online (unsigned int,int) ;
 int stop_lock ;
 scalar_t__ system_state ;
 int wfe () ;

__attribute__((used)) static void ipi_cpu_stop(unsigned int cpu)
{
 if (system_state <= SYSTEM_RUNNING) {
  raw_spin_lock(&stop_lock);
  pr_crit("CPU%u: stopping\n", cpu);
  dump_stack();
  raw_spin_unlock(&stop_lock);
 }

 set_cpu_online(cpu, 0);

 local_fiq_disable();
 local_irq_disable();

 while (1) {
  cpu_relax();
  wfe();
 }
}
