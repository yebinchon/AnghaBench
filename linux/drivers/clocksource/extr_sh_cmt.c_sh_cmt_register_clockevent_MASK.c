#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct clock_event_device {char const* name; int rating; int shift; int max_delta_ticks; int min_delta_ticks; void* min_delta_ns; void* max_delta_ns; int /*<<< orphan*/  mult; int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; int /*<<< orphan*/  set_state_oneshot; int /*<<< orphan*/  set_state_periodic; int /*<<< orphan*/  set_state_shutdown; int /*<<< orphan*/  set_next_event; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  features; } ;
struct sh_cmt_channel {int max_match_value; int /*<<< orphan*/  index; TYPE_1__* cmt; struct clock_event_device ced; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_FEAT_ONESHOT ; 
 int /*<<< orphan*/  CLOCK_EVT_FEAT_PERIODIC ; 
 int IRQF_IRQPOLL ; 
 int IRQF_NOBALANCING ; 
 int IRQF_TIMER ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 void* FUNC0 (int,struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sh_cmt_channel*) ; 
 int /*<<< orphan*/  sh_cmt_clock_event_next ; 
 int /*<<< orphan*/  sh_cmt_clock_event_resume ; 
 int /*<<< orphan*/  sh_cmt_clock_event_set_oneshot ; 
 int /*<<< orphan*/  sh_cmt_clock_event_set_periodic ; 
 int /*<<< orphan*/  sh_cmt_clock_event_shutdown ; 
 int /*<<< orphan*/  sh_cmt_clock_event_suspend ; 
 int /*<<< orphan*/  sh_cmt_interrupt ; 

__attribute__((used)) static int FUNC8(struct sh_cmt_channel *ch,
				      const char *name)
{
	struct clock_event_device *ced = &ch->ced;
	int irq;
	int ret;

	irq = FUNC6(ch->cmt->pdev, ch->index);
	if (irq < 0)
		return irq;

	ret = FUNC7(irq, sh_cmt_interrupt,
			  IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
			  FUNC4(&ch->cmt->pdev->dev), ch);
	if (ret) {
		FUNC2(&ch->cmt->pdev->dev, "ch%u: failed to request irq %d\n",
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

	/* TODO: calculate good shift from rate and counter bit width */
	ced->shift = 32;
	ced->mult = FUNC5(ch->cmt->rate, NSEC_PER_SEC, ced->shift);
	ced->max_delta_ns = FUNC0(ch->max_match_value, ced);
	ced->max_delta_ticks = ch->max_match_value;
	ced->min_delta_ns = FUNC0(0x1f, ced);
	ced->min_delta_ticks = 0x1f;

	FUNC3(&ch->cmt->pdev->dev, "ch%u: used for clock events\n",
		 ch->index);
	FUNC1(ced);

	return 0;
}