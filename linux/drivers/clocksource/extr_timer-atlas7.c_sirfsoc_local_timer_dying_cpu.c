
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq; } ;


 int remove_irq (int ,TYPE_1__*) ;
 TYPE_1__ sirfsoc_timer1_irq ;
 int sirfsoc_timer_count_disable (int) ;
 TYPE_1__ sirfsoc_timer_irq ;

__attribute__((used)) static int sirfsoc_local_timer_dying_cpu(unsigned int cpu)
{
 sirfsoc_timer_count_disable(1);

 if (cpu == 0)
  remove_irq(sirfsoc_timer_irq.irq, &sirfsoc_timer_irq);
 else
  remove_irq(sirfsoc_timer1_irq.irq, &sirfsoc_timer1_irq);
 return 0;
}
