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
struct clock_event_device {int irq; int /*<<< orphan*/  (* set_state_shutdown ) (struct clock_event_device*) ;} ;
struct mct_clock_event_device {scalar_t__ base; struct clock_event_device evt; } ;

/* Variables and functions */
 scalar_t__ MCT_INT_SPI ; 
 size_t MCT_L0_IRQ ; 
 scalar_t__ MCT_L_INT_CSTAT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 scalar_t__ mct_int_type ; 
 int /*<<< orphan*/ * mct_irqs ; 
 struct mct_clock_event_device* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  percpu_mct_tick ; 
 int /*<<< orphan*/  FUNC4 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct mct_clock_event_device *mevt =
		FUNC3(&percpu_mct_tick, cpu);
	struct clock_event_device *evt = &mevt->evt;

	evt->set_state_shutdown(evt);
	if (mct_int_type == MCT_INT_SPI) {
		if (evt->irq != -1)
			FUNC0(evt->irq);
		FUNC2(0x1, mevt->base + MCT_L_INT_CSTAT_OFFSET);
	} else {
		FUNC1(mct_irqs[MCT_L0_IRQ]);
	}
	return 0;
}