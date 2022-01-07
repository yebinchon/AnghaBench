
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_cmt_channel {int max_match_value; TYPE_1__* cmt; } ;
struct TYPE_2__ {int rate; } ;


 int FLAG_CLOCKEVENT ;
 int HZ ;
 int sh_cmt_set_next (struct sh_cmt_channel*,int) ;
 int sh_cmt_start (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static void sh_cmt_clock_event_start(struct sh_cmt_channel *ch, int periodic)
{
 sh_cmt_start(ch, FLAG_CLOCKEVENT);

 if (periodic)
  sh_cmt_set_next(ch, ((ch->cmt->rate + HZ/2) / HZ) - 1);
 else
  sh_cmt_set_next(ch, ch->max_match_value);
}
