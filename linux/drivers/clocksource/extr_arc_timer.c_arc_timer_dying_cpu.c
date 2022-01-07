
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc_timer_irq ;
 int disable_percpu_irq (int ) ;

__attribute__((used)) static int arc_timer_dying_cpu(unsigned int cpu)
{
 disable_percpu_irq(arc_timer_irq);
 return 0;
}
