
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
 int sh_cmt_enable (struct sh_cmt_channel*) ;

__attribute__((used)) static int sh_cmt_start(struct sh_cmt_channel *ch, unsigned long flag)
{
 int ret = 0;
 unsigned long flags;

 raw_spin_lock_irqsave(&ch->lock, flags);

 if (!(ch->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
  ret = sh_cmt_enable(ch);

 if (ret)
  goto out;
 ch->flags |= flag;


 if ((flag == FLAG_CLOCKSOURCE) && (!(ch->flags & FLAG_CLOCKEVENT)))
  __sh_cmt_set_next(ch, ch->max_match_value);
 out:
 raw_spin_unlock_irqrestore(&ch->lock, flags);

 return ret;
}
