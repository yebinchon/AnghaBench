
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int expires; } ;


 unsigned long jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mod_timer (struct timer_list*,int ) ;
 int round_jiffies (unsigned long) ;
 scalar_t__ time_before (unsigned long,int ) ;
 int timer_pending (struct timer_list*) ;

__attribute__((used)) static void __start_timer(struct timer_list *t, unsigned long interval)
{
 unsigned long when = jiffies + interval;
 unsigned long flags;

 local_irq_save(flags);

 if (!timer_pending(t) || time_before(when, t->expires))
  mod_timer(t, round_jiffies(when));

 local_irq_restore(flags);
}
