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
struct rk_timer {int dummy; } ;
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct clock_event_device*) ; 
 struct rk_timer* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_timer*) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_timer*) ; 
 int /*<<< orphan*/  FUNC4 (struct clock_event_device*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct clock_event_device *ce = dev_id;
	struct rk_timer *timer = FUNC1(ce);

	FUNC3(timer);

	if (FUNC0(ce))
		FUNC2(timer);

	ce->event_handler(ce);

	return IRQ_HANDLED;
}