
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int irqreturn_t ;
struct TYPE_6__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MFGPT_REG_COUNTER ;
 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_CMP1 ;
 int MFGPT_SETUP_CMP2 ;
 int MFGPT_SETUP_CNTEN ;
 int MFGPT_SETUP_SETUP ;
 scalar_t__ clockevent_state_detached (TYPE_1__*) ;
 scalar_t__ clockevent_state_periodic (TYPE_1__*) ;
 scalar_t__ clockevent_state_shutdown (TYPE_1__*) ;
 TYPE_1__ cs5535_clockevent ;
 int cs5535_event_clock ;
 int cs5535_mfgpt_read (int ,int ) ;
 int cs5535_mfgpt_write (int ,int ,int) ;
 int disable_timer (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t mfgpt_tick(int irq, void *dev_id)
{
 uint16_t val = cs5535_mfgpt_read(cs5535_event_clock, MFGPT_REG_SETUP);


 if (!(val & (MFGPT_SETUP_SETUP | MFGPT_SETUP_CMP2 | MFGPT_SETUP_CMP1)))
  return IRQ_NONE;


 disable_timer(cs5535_event_clock);

 if (clockevent_state_detached(&cs5535_clockevent) ||
     clockevent_state_shutdown(&cs5535_clockevent))
  return IRQ_HANDLED;


 cs5535_mfgpt_write(cs5535_event_clock, MFGPT_REG_COUNTER, 0);



 if (clockevent_state_periodic(&cs5535_clockevent))
  cs5535_mfgpt_write(cs5535_event_clock, MFGPT_REG_SETUP,
    MFGPT_SETUP_CNTEN | MFGPT_SETUP_CMP2);

 cs5535_clockevent.event_handler(&cs5535_clockevent);
 return IRQ_HANDLED;
}
