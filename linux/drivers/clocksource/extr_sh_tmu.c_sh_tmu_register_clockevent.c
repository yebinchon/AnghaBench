
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clock_event_device {char const* name; int rating; int resume; int suspend; int set_state_oneshot; int set_state_periodic; int set_state_shutdown; int set_next_event; int cpumask; int features; } ;
struct sh_tmu_channel {int irq; int index; TYPE_2__* tmu; struct clock_event_device ced; } ;
struct TYPE_4__ {TYPE_1__* pdev; int rate; } ;
struct TYPE_3__ {int dev; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int IRQF_IRQPOLL ;
 int IRQF_NOBALANCING ;
 int IRQF_TIMER ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int,int) ;
 int cpu_possible_mask ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_info (int *,char*,int ) ;
 int dev_name (int *) ;
 int request_irq (int ,int ,int,int ,struct sh_tmu_channel*) ;
 int sh_tmu_clock_event_next ;
 int sh_tmu_clock_event_resume ;
 int sh_tmu_clock_event_set_oneshot ;
 int sh_tmu_clock_event_set_periodic ;
 int sh_tmu_clock_event_shutdown ;
 int sh_tmu_clock_event_suspend ;
 int sh_tmu_interrupt ;

__attribute__((used)) static void sh_tmu_register_clockevent(struct sh_tmu_channel *ch,
           const char *name)
{
 struct clock_event_device *ced = &ch->ced;
 int ret;

 ced->name = name;
 ced->features = CLOCK_EVT_FEAT_PERIODIC;
 ced->features |= CLOCK_EVT_FEAT_ONESHOT;
 ced->rating = 200;
 ced->cpumask = cpu_possible_mask;
 ced->set_next_event = sh_tmu_clock_event_next;
 ced->set_state_shutdown = sh_tmu_clock_event_shutdown;
 ced->set_state_periodic = sh_tmu_clock_event_set_periodic;
 ced->set_state_oneshot = sh_tmu_clock_event_set_oneshot;
 ced->suspend = sh_tmu_clock_event_suspend;
 ced->resume = sh_tmu_clock_event_resume;

 dev_info(&ch->tmu->pdev->dev, "ch%u: used for clock events\n",
   ch->index);

 clockevents_config_and_register(ced, ch->tmu->rate, 0x300, 0xffffffff);

 ret = request_irq(ch->irq, sh_tmu_interrupt,
     IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
     dev_name(&ch->tmu->pdev->dev), ch);
 if (ret) {
  dev_err(&ch->tmu->pdev->dev, "ch%u: failed to request irq %d\n",
   ch->index, ch->irq);
  return;
 }
}
