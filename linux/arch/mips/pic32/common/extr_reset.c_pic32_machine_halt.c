
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int pic32_halt () ;

__attribute__((used)) static void pic32_machine_halt(void)
{
 local_irq_disable();

 pic32_halt();
}
