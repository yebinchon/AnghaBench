
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int mdelay (int) ;
 int num_online_cpus () ;
 int smp_send_stop () ;

void machine_shutdown(void)
{
 smp_send_stop();
 while (num_online_cpus() > 1) {
  cpu_relax();
  mdelay(1);
 }
}
