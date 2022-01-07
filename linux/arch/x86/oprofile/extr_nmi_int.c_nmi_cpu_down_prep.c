
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctr_running ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int nmi_cpu_shutdown () ;
 int nmi_cpu_stop (int *) ;
 scalar_t__ nmi_enabled ;

__attribute__((used)) static int nmi_cpu_down_prep(unsigned int cpu)
{
 local_irq_disable();
 if (ctr_running)
  nmi_cpu_stop(((void*)0));
 if (nmi_enabled)
  nmi_cpu_shutdown();
 local_irq_enable();
 return 0;
}
