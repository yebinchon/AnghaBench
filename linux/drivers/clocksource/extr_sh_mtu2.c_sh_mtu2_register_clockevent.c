
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clock_event_device {char const* name; int rating; int resume; int suspend; int set_state_periodic; int set_state_shutdown; int cpumask; int features; } ;
struct sh_mtu2_channel {int index; TYPE_2__* mtu; struct clock_event_device ced; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int CLOCK_EVT_FEAT_PERIODIC ;
 int clockevents_register_device (struct clock_event_device*) ;
 int cpu_possible_mask ;
 int dev_info (int *,char*,int ) ;
 int sh_mtu2_clock_event_resume ;
 int sh_mtu2_clock_event_set_periodic ;
 int sh_mtu2_clock_event_shutdown ;
 int sh_mtu2_clock_event_suspend ;

__attribute__((used)) static void sh_mtu2_register_clockevent(struct sh_mtu2_channel *ch,
     const char *name)
{
 struct clock_event_device *ced = &ch->ced;

 ced->name = name;
 ced->features = CLOCK_EVT_FEAT_PERIODIC;
 ced->rating = 200;
 ced->cpumask = cpu_possible_mask;
 ced->set_state_shutdown = sh_mtu2_clock_event_shutdown;
 ced->set_state_periodic = sh_mtu2_clock_event_set_periodic;
 ced->suspend = sh_mtu2_clock_event_suspend;
 ced->resume = sh_mtu2_clock_event_resume;

 dev_info(&ch->mtu->pdev->dev, "ch%u: used for clock events\n",
   ch->index);
 clockevents_register_device(ced);
}
