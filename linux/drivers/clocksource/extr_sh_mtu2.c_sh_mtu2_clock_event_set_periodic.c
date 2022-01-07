
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mtu2_channel {int index; TYPE_2__* mtu; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 struct sh_mtu2_channel* ced_to_sh_mtu2 (struct clock_event_device*) ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int dev_info (int *,char*,int ) ;
 int sh_mtu2_disable (struct sh_mtu2_channel*) ;
 int sh_mtu2_enable (struct sh_mtu2_channel*) ;

__attribute__((used)) static int sh_mtu2_clock_event_set_periodic(struct clock_event_device *ced)
{
 struct sh_mtu2_channel *ch = ced_to_sh_mtu2(ced);

 if (clockevent_state_periodic(ced))
  sh_mtu2_disable(ch);

 dev_info(&ch->mtu->pdev->dev, "ch%u: used for periodic clock events\n",
   ch->index);
 sh_mtu2_enable(ch);
 return 0;
}
