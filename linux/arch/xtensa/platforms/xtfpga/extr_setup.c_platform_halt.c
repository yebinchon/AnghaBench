
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int lcd_disp_at_pos (char*,int ) ;
 int local_irq_disable () ;

void platform_halt(void)
{
 lcd_disp_at_pos(" HALT ", 0);
 local_irq_disable();
 while (1)
  cpu_relax();
}
