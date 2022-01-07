
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct sh_mtu2_channel {TYPE_1__ ced; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TSR ;
 int TSR_TGFA ;
 int sh_mtu2_read (struct sh_mtu2_channel*,int ) ;
 int sh_mtu2_write (struct sh_mtu2_channel*,int ,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t sh_mtu2_interrupt(int irq, void *dev_id)
{
 struct sh_mtu2_channel *ch = dev_id;


 sh_mtu2_read(ch, TSR);
 sh_mtu2_write(ch, TSR, ~TSR_TGFA);


 ch->ced.event_handler(&ch->ced);
 return IRQ_HANDLED;
}
