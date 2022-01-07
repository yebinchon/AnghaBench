
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_tlb_global () ;
 int cpu_sleep () ;
 int local_irq_disable () ;
 int trigger_address_error () ;
 int watchdog_trigger_immediate () ;

__attribute__((used)) static void native_machine_restart(char * __unused)
{
 local_irq_disable();


 __flush_tlb_global();


 trigger_address_error();
 while (1)
  cpu_sleep();
}
