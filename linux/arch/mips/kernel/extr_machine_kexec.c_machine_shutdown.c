
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_kexec_shutdown () ;
 int cpu_relax () ;
 int kexec_shutdown_secondary ;
 int mdelay (int) ;
 int num_online_cpus () ;
 int smp_call_function (int ,int *,int ) ;

void
machine_shutdown(void)
{
 if (_machine_kexec_shutdown)
  _machine_kexec_shutdown();
}
