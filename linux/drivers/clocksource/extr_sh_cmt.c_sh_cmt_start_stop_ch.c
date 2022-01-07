
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sh_cmt_channel {int timer_bit; TYPE_1__* cmt; } ;
struct TYPE_2__ {int lock; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int sh_cmt_read_cmstr (struct sh_cmt_channel*) ;
 int sh_cmt_write_cmstr (struct sh_cmt_channel*,int) ;

__attribute__((used)) static void sh_cmt_start_stop_ch(struct sh_cmt_channel *ch, int start)
{
 unsigned long flags;
 u32 value;


 raw_spin_lock_irqsave(&ch->cmt->lock, flags);
 value = sh_cmt_read_cmstr(ch);

 if (start)
  value |= 1 << ch->timer_bit;
 else
  value &= ~(1 << ch->timer_bit);

 sh_cmt_write_cmstr(ch, value);
 raw_spin_unlock_irqrestore(&ch->cmt->lock, flags);
}
