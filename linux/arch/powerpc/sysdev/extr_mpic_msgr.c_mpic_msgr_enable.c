
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic_msgr {int num; int lock; } ;


 int _mpic_msgr_mer_read (struct mpic_msgr*) ;
 int _mpic_msgr_mer_write (struct mpic_msgr*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void mpic_msgr_enable(struct mpic_msgr *msgr)
{
 unsigned long flags;
 u32 mer;

 raw_spin_lock_irqsave(&msgr->lock, flags);
 mer = _mpic_msgr_mer_read(msgr);
 _mpic_msgr_mer_write(msgr, mer | (1 << msgr->num));
 raw_spin_unlock_irqrestore(&msgr->lock, flags);
}
