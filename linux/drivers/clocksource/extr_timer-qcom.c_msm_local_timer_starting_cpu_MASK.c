#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct clock_event_device {char* name; int rating; int /*<<< orphan*/  irq; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  set_next_event; void* tick_resume; void* set_state_oneshot; void* set_state_shutdown; int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_FEAT_ONESHOT ; 
 int /*<<< orphan*/  GPT_HZ ; 
 int IRQF_NOBALANCING ; 
 int IRQF_TIMER ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_evt ; 
 scalar_t__ msm_timer_has_ppi ; 
 int /*<<< orphan*/  msm_timer_interrupt ; 
 int /*<<< orphan*/  msm_timer_irq ; 
 int /*<<< orphan*/  msm_timer_set_next_event ; 
 void* msm_timer_shutdown ; 
 struct clock_event_device* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct clock_event_device*) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	struct clock_event_device *evt = FUNC3(msm_evt, cpu);
	int err;

	evt->irq = msm_timer_irq;
	evt->name = "msm_timer";
	evt->features = CLOCK_EVT_FEAT_ONESHOT;
	evt->rating = 200;
	evt->set_state_shutdown = msm_timer_shutdown;
	evt->set_state_oneshot = msm_timer_shutdown;
	evt->tick_resume = msm_timer_shutdown;
	evt->set_next_event = msm_timer_set_next_event;
	evt->cpumask = FUNC1(cpu);

	FUNC0(evt, GPT_HZ, 4, 0xffffffff);

	if (msm_timer_has_ppi) {
		FUNC2(evt->irq, IRQ_TYPE_EDGE_RISING);
	} else {
		err = FUNC5(evt->irq, msm_timer_interrupt,
				IRQF_TIMER | IRQF_NOBALANCING |
				IRQF_TRIGGER_RISING, "gp_timer", evt);
		if (err)
			FUNC4("request_irq failed\n");
	}

	return 0;
}