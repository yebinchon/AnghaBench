
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mtu2_channel {int index; TYPE_1__* mtu; } ;
struct TYPE_2__ {int lock; } ;


 int TSTR ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sh_mtu2_read (struct sh_mtu2_channel*,int ) ;
 int sh_mtu2_write (struct sh_mtu2_channel*,int ,unsigned long) ;

__attribute__((used)) static void sh_mtu2_start_stop_ch(struct sh_mtu2_channel *ch, int start)
{
 unsigned long flags, value;


 raw_spin_lock_irqsave(&ch->mtu->lock, flags);
 value = sh_mtu2_read(ch, TSTR);

 if (start)
  value |= 1 << ch->index;
 else
  value &= ~(1 << ch->index);

 sh_mtu2_write(ch, TSTR, value);
 raw_spin_unlock_irqrestore(&ch->mtu->lock, flags);
}
