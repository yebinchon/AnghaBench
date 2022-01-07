
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_channel_data {int dummy; } ;
struct TYPE_2__ {int busy; } ;


 int BUG () ;
 int lock ;
 TYPE_1__* signals ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pl080_put_signal(const struct pl08x_channel_data *cd, int signal)
{
 unsigned long flags;

 spin_lock_irqsave(&lock, flags);


 if (!signals[signal].busy)
  BUG();

 signals[signal].busy--;

 spin_unlock_irqrestore(&lock, flags);
}
