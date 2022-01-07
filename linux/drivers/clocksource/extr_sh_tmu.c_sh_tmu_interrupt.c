
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct sh_tmu_channel {TYPE_1__ ced; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TCR ;
 int TCR_TPSC_CLK4 ;
 int TCR_UNIE ;
 scalar_t__ clockevent_state_oneshot (TYPE_1__*) ;
 int sh_tmu_write (struct sh_tmu_channel*,int ,int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t sh_tmu_interrupt(int irq, void *dev_id)
{
 struct sh_tmu_channel *ch = dev_id;


 if (clockevent_state_oneshot(&ch->ced))
  sh_tmu_write(ch, TCR, TCR_TPSC_CLK4);
 else
  sh_tmu_write(ch, TCR, TCR_UNIE | TCR_TPSC_CLK4);


 ch->ced.event_handler(&ch->ced);
 return IRQ_HANDLED;
}
