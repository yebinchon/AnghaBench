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
struct clock_event_device {int features; int rating; int irq; void* tick_resume; void* set_state_oneshot_stopped; void* set_state_oneshot; void* set_state_shutdown; int /*<<< orphan*/  set_state_periodic; int /*<<< orphan*/  set_next_event; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  name; } ;
struct mct_clock_event_device {scalar_t__ base; int /*<<< orphan*/  name; struct clock_event_device evt; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_ONESHOT ; 
 int CLOCK_EVT_FEAT_PERIODIC ; 
 int EIO ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ MCT_INT_SPI ; 
 size_t MCT_L0_IRQ ; 
 scalar_t__ MCT_L_TCNTB_OFFSET ; 
 int TICK_BASE_CNT ; 
 int clk_rate ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  exynos4_tick_set_next_event ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mct_int_type ; 
 int /*<<< orphan*/ * mct_irqs ; 
 struct mct_clock_event_device* FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  percpu_mct_tick ; 
 int /*<<< orphan*/  set_state_periodic ; 
 void* set_state_shutdown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC9(unsigned int cpu)
{
	struct mct_clock_event_device *mevt =
		FUNC7(&percpu_mct_tick, cpu);
	struct clock_event_device *evt = &mevt->evt;

	mevt->base = FUNC0(cpu);
	FUNC8(mevt->name, sizeof(mevt->name), "mct_tick%d", cpu);

	evt->name = mevt->name;
	evt->cpumask = FUNC2(cpu);
	evt->set_next_event = exynos4_tick_set_next_event;
	evt->set_state_periodic = set_state_periodic;
	evt->set_state_shutdown = set_state_shutdown;
	evt->set_state_oneshot = set_state_shutdown;
	evt->set_state_oneshot_stopped = set_state_shutdown;
	evt->tick_resume = set_state_shutdown;
	evt->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
	evt->rating = 500;	/* use value higher than ARM arch timer */

	FUNC5(TICK_BASE_CNT, mevt->base + MCT_L_TCNTB_OFFSET);

	if (mct_int_type == MCT_INT_SPI) {

		if (evt->irq == -1)
			return -EIO;

		FUNC6(evt->irq, FUNC2(cpu));
		FUNC3(evt->irq);
	} else {
		FUNC4(mct_irqs[MCT_L0_IRQ], 0);
	}
	FUNC1(evt, clk_rate / (TICK_BASE_CNT + 1),
					0xf, 0x7fffffff);

	return 0;
}