
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int nmi_active ;
 int pr_warn_once (char*) ;
 int smp_call_function_single (unsigned int,int ,int *,int) ;
 int stop_nmi_watchdog ;

void watchdog_nmi_disable(unsigned int cpu)
{
 if (atomic_read(&nmi_active) == -1)
  pr_warn_once("NMI watchdog cannot be enabled or disabled\n");
 else
  smp_call_function_single(cpu, stop_nmi_watchdog, ((void*)0), 1);
}
