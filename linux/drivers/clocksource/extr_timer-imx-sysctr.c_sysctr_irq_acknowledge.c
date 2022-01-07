
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctr_timer_enable (int) ;

__attribute__((used)) static void sysctr_irq_acknowledge(void)
{





 sysctr_timer_enable(0);
}
