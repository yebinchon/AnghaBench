
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int pr_emerg (char*) ;

__attribute__((used)) static void machine_hang(void)
{
 pr_emerg("System Halted, OK to turn off power\n");
 local_irq_disable();
 while (1)
  ;
}
