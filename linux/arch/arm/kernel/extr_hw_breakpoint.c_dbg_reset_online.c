
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int reset_ctrl_regs (unsigned int) ;

__attribute__((used)) static int dbg_reset_online(unsigned int cpu)
{
 local_irq_disable();
 reset_ctrl_regs(cpu);
 local_irq_enable();
 return 0;
}
