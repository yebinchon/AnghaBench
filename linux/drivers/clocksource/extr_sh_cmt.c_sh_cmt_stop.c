
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_channel {unsigned long flags; int lock; int max_match_value; } ;


 unsigned long FLAG_CLOCKEVENT ;
 unsigned long FLAG_CLOCKSOURCE ;
 int __sh_cmt_set_next (struct sh_cmt_channel*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int sh_cmt_disable (struct sh_cmt_channel*) ;

__attribute__((used)) static void sh_cmt_stop(struct sh_cmt_channel *ch, unsigned long flag)
{
 unsigned long flags;
 unsigned long f;

 raw_spin_lock_irqsave(&ch->lock, flags);

 f = ch->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE);
 ch->flags &= ~flag;

 if (f && !(ch->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
  sh_cmt_disable(ch);


 if ((flag == FLAG_CLOCKEVENT) && (ch->flags & FLAG_CLOCKSOURCE))
  __sh_cmt_set_next(ch, ch->max_match_value);

 raw_spin_unlock_irqrestore(&ch->lock, flags);
}
