
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;
 int local_irq_enable () ;

__attribute__((used)) static void gemini_idle(void)
{
 local_irq_enable();
 cpu_do_idle();
}
