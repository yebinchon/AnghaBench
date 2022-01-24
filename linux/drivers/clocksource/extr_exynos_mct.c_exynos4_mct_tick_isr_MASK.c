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
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
struct mct_clock_event_device {struct clock_event_device evt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mct_clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mct_clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct mct_clock_event_device *mevt = dev_id;
	struct clock_event_device *evt = &mevt->evt;

	/*
	 * This is for supporting oneshot mode.
	 * Mct would generate interrupt periodically
	 * without explicit stopping.
	 */
	if (!FUNC0(&mevt->evt))
		FUNC2(mevt);

	FUNC1(mevt);

	evt->event_handler(evt);

	return IRQ_HANDLED;
}