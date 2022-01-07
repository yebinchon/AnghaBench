
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int nmi_active ;
 int nmi_init_done ;
 int pr_warn (char*) ;
 int smp_call_function_single (unsigned int,int ,int *,int) ;
 int start_nmi_watchdog ;

int watchdog_nmi_enable(unsigned int cpu)
{
 if (atomic_read(&nmi_active) == -1) {
  pr_warn("NMI watchdog cannot be enabled or disabled\n");
  return -1;
 }






 if (!nmi_init_done)
  return 0;

 smp_call_function_single(cpu, start_nmi_watchdog, ((void*)0), 1);

 return 0;
}
