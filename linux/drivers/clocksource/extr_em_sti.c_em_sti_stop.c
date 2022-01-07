
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_sti_priv {int* active; int lock; } ;


 size_t USER_CLOCKEVENT ;
 size_t USER_CLOCKSOURCE ;
 int em_sti_disable (struct em_sti_priv*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void em_sti_stop(struct em_sti_priv *p, unsigned int user)
{
 unsigned long flags;
 int used_before, used_after;

 raw_spin_lock_irqsave(&p->lock, flags);
 used_before = p->active[USER_CLOCKSOURCE] | p->active[USER_CLOCKEVENT];
 p->active[user] = 0;
 used_after = p->active[USER_CLOCKSOURCE] | p->active[USER_CLOCKEVENT];

 if (used_before && !used_after)
  em_sti_disable(p);
 raw_spin_unlock_irqrestore(&p->lock, flags);
}
