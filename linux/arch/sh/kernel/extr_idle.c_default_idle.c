
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bl_bit () ;
 int cpu_sleep () ;
 int local_irq_enable () ;
 int set_bl_bit () ;

void default_idle(void)
{
 set_bl_bit();
 local_irq_enable();

 cpu_sleep();
 clear_bl_bit();
}
