
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* event_handler ) (TYPE_3__*) ;} ;
struct sh_cmt_channel {int flags; scalar_t__ match_value; scalar_t__ next_match_value; scalar_t__ max_match_value; TYPE_3__ ced; int total_cycles; TYPE_2__* cmt; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {int clear_bits; } ;


 int FLAG_CLOCKEVENT ;
 int FLAG_CLOCKSOURCE ;
 int FLAG_IRQCONTEXT ;
 int FLAG_REPROGRAM ;
 int FLAG_SKIPEVENT ;
 int IRQ_HANDLED ;
 scalar_t__ clockevent_state_oneshot (TYPE_3__*) ;
 scalar_t__ clockevent_state_shutdown (TYPE_3__*) ;
 int sh_cmt_clock_event_program_verify (struct sh_cmt_channel*,int) ;
 int sh_cmt_read_cmcsr (struct sh_cmt_channel*) ;
 int sh_cmt_write_cmcsr (struct sh_cmt_channel*,int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static irqreturn_t sh_cmt_interrupt(int irq, void *dev_id)
{
 struct sh_cmt_channel *ch = dev_id;


 sh_cmt_write_cmcsr(ch, sh_cmt_read_cmcsr(ch) &
      ch->cmt->info->clear_bits);





 if (ch->flags & FLAG_CLOCKSOURCE)
  ch->total_cycles += ch->match_value + 1;

 if (!(ch->flags & FLAG_REPROGRAM))
  ch->next_match_value = ch->max_match_value;

 ch->flags |= FLAG_IRQCONTEXT;

 if (ch->flags & FLAG_CLOCKEVENT) {
  if (!(ch->flags & FLAG_SKIPEVENT)) {
   if (clockevent_state_oneshot(&ch->ced)) {
    ch->next_match_value = ch->max_match_value;
    ch->flags |= FLAG_REPROGRAM;
   }

   ch->ced.event_handler(&ch->ced);
  }
 }

 ch->flags &= ~FLAG_SKIPEVENT;

 if (ch->flags & FLAG_REPROGRAM) {
  ch->flags &= ~FLAG_REPROGRAM;
  sh_cmt_clock_event_program_verify(ch, 1);

  if (ch->flags & FLAG_CLOCKEVENT)
   if ((clockevent_state_shutdown(&ch->ced))
       || (ch->match_value == ch->next_match_value))
    ch->flags &= ~FLAG_REPROGRAM;
 }

 ch->flags &= ~FLAG_IRQCONTEXT;

 return IRQ_HANDLED;
}
