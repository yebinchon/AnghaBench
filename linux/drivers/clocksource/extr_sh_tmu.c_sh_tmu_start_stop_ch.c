
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_channel {int index; TYPE_1__* tmu; } ;
struct TYPE_2__ {int lock; } ;


 int TSTR ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sh_tmu_read (struct sh_tmu_channel*,int ) ;
 int sh_tmu_write (struct sh_tmu_channel*,int ,unsigned long) ;

__attribute__((used)) static void sh_tmu_start_stop_ch(struct sh_tmu_channel *ch, int start)
{
 unsigned long flags, value;


 raw_spin_lock_irqsave(&ch->tmu->lock, flags);
 value = sh_tmu_read(ch, TSTR);

 if (start)
  value |= 1 << ch->index;
 else
  value &= ~(1 << ch->index);

 sh_tmu_write(ch, TSTR, value);
 raw_spin_unlock_irqrestore(&ch->tmu->lock, flags);
}
