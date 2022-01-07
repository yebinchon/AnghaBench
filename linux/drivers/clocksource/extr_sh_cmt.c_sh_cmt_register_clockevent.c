
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clock_event_device {char const* name; int rating; int shift; int max_delta_ticks; int min_delta_ticks; void* min_delta_ns; void* max_delta_ns; int mult; int resume; int suspend; int set_state_oneshot; int set_state_periodic; int set_state_shutdown; int set_next_event; int cpumask; int features; } ;
struct sh_cmt_channel {int max_match_value; int index; TYPE_1__* cmt; struct clock_event_device ced; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; int rate; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int IRQF_IRQPOLL ;
 int IRQF_NOBALANCING ;
 int IRQF_TIMER ;
 int NSEC_PER_SEC ;
 void* clockevent_delta2ns (int,struct clock_event_device*) ;
 int clockevents_register_device (struct clock_event_device*) ;
 int cpu_possible_mask ;
 int dev_err (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ) ;
 int dev_name (int *) ;
 int div_sc (int ,int ,int) ;
 int platform_get_irq (TYPE_2__*,int ) ;
 int request_irq (int,int ,int,int ,struct sh_cmt_channel*) ;
 int sh_cmt_clock_event_next ;
 int sh_cmt_clock_event_resume ;
 int sh_cmt_clock_event_set_oneshot ;
 int sh_cmt_clock_event_set_periodic ;
 int sh_cmt_clock_event_shutdown ;
 int sh_cmt_clock_event_suspend ;
 int sh_cmt_interrupt ;

__attribute__((used)) static int sh_cmt_register_clockevent(struct sh_cmt_channel *ch,
          const char *name)
{
 struct clock_event_device *ced = &ch->ced;
 int irq;
 int ret;

 irq = platform_get_irq(ch->cmt->pdev, ch->index);
 if (irq < 0)
  return irq;

 ret = request_irq(irq, sh_cmt_interrupt,
     IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
     dev_name(&ch->cmt->pdev->dev), ch);
 if (ret) {
  dev_err(&ch->cmt->pdev->dev, "ch%u: failed to request irq %d\n",
   ch->index, irq);
  return ret;
 }

 ced->name = name;
 ced->features = CLOCK_EVT_FEAT_PERIODIC;
 ced->features |= CLOCK_EVT_FEAT_ONESHOT;
 ced->rating = 125;
 ced->cpumask = cpu_possible_mask;
 ced->set_next_event = sh_cmt_clock_event_next;
 ced->set_state_shutdown = sh_cmt_clock_event_shutdown;
 ced->set_state_periodic = sh_cmt_clock_event_set_periodic;
 ced->set_state_oneshot = sh_cmt_clock_event_set_oneshot;
 ced->suspend = sh_cmt_clock_event_suspend;
 ced->resume = sh_cmt_clock_event_resume;


 ced->shift = 32;
 ced->mult = div_sc(ch->cmt->rate, NSEC_PER_SEC, ced->shift);
 ced->max_delta_ns = clockevent_delta2ns(ch->max_match_value, ced);
 ced->max_delta_ticks = ch->max_match_value;
 ced->min_delta_ns = clockevent_delta2ns(0x1f, ced);
 ced->min_delta_ticks = 0x1f;

 dev_info(&ch->cmt->pdev->dev, "ch%u: used for clock events\n",
   ch->index);
 clockevents_register_device(ced);

 return 0;
}
