
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int pr_debug (char*,int ) ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

void panic_smp_self_stop(void)
{
 pr_debug("CPU %u will stop doing anything useful since another CPU has paniced\n",
          smp_processor_id());
 set_cpu_online(smp_processor_id(), 0);
 while (1)
  cpu_relax();
}
