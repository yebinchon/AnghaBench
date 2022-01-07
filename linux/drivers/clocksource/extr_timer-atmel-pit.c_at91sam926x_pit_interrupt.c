
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct pit_data {int cnt; int cycle; TYPE_1__ clkevt; int base; } ;
typedef int irqreturn_t ;


 int AT91_PIT_PITS ;
 int AT91_PIT_PIVR ;
 int AT91_PIT_SR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PIT_PICNT (int) ;
 scalar_t__ clockevent_state_periodic (TYPE_1__*) ;
 int pit_read (int ,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t at91sam926x_pit_interrupt(int irq, void *dev_id)
{
 struct pit_data *data = dev_id;


 if (clockevent_state_periodic(&data->clkevt) &&
     (pit_read(data->base, AT91_PIT_SR) & AT91_PIT_PITS)) {

  data->cnt += data->cycle * PIT_PICNT(pit_read(data->base,
             AT91_PIT_PIVR));
  data->clkevt.event_handler(&data->clkevt);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
