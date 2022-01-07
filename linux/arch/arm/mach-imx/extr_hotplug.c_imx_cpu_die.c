
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;
 int cpu_enter_lowpower () ;
 int imx_set_cpu_arg (unsigned int,int ) ;

void imx_cpu_die(unsigned int cpu)
{
 cpu_enter_lowpower();





 imx_set_cpu_arg(cpu, ~0);

 while (1)
  cpu_do_idle();
}
