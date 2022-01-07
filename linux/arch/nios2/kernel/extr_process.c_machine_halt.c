
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int pr_notice (char*) ;

void machine_halt(void)
{
 pr_notice("Machine halt...\n");
 local_irq_disable();
 for (;;)
  ;
}
