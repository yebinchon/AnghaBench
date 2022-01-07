
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_channel {int lock; } ;


 int __sh_cmt_set_next (struct sh_cmt_channel*,unsigned long) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_cmt_set_next(struct sh_cmt_channel *ch, unsigned long delta)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&ch->lock, flags);
 __sh_cmt_set_next(ch, delta);
 raw_spin_unlock_irqrestore(&ch->lock, flags);
}
