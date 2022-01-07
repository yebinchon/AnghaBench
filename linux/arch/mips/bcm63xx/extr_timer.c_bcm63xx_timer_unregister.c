
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cb; } ;


 int BCM63XX_TIMER_COUNT ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* timer_data ;
 int timer_data_lock ;

void bcm63xx_timer_unregister(int id)
{
 unsigned long flags;

 if (id >= BCM63XX_TIMER_COUNT)
  return;

 raw_spin_lock_irqsave(&timer_data_lock, flags);
 timer_data[id].cb = ((void*)0);
 raw_spin_unlock_irqrestore(&timer_data_lock, flags);
}
