
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic_msgr {int lock; } ;


 int _mpic_msgr_disable (struct mpic_msgr*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void mpic_msgr_disable(struct mpic_msgr *msgr)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&msgr->lock, flags);
 _mpic_msgr_disable(msgr);
 raw_spin_unlock_irqrestore(&msgr->lock, flags);
}
