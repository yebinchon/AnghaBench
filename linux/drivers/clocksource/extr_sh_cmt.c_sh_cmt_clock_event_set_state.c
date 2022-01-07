
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_channel {int index; TYPE_2__* cmt; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int FLAG_CLOCKEVENT ;
 struct sh_cmt_channel* ced_to_sh_cmt (struct clock_event_device*) ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int dev_info (int *,char*,int ,char*) ;
 int sh_cmt_clock_event_start (struct sh_cmt_channel*,int) ;
 int sh_cmt_stop (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static int sh_cmt_clock_event_set_state(struct clock_event_device *ced,
     int periodic)
{
 struct sh_cmt_channel *ch = ced_to_sh_cmt(ced);


 if (clockevent_state_oneshot(ced) || clockevent_state_periodic(ced))
  sh_cmt_stop(ch, FLAG_CLOCKEVENT);

 dev_info(&ch->cmt->pdev->dev, "ch%u: used for %s clock events\n",
   ch->index, periodic ? "periodic" : "oneshot");
 sh_cmt_clock_event_start(ch, periodic);
 return 0;
}
