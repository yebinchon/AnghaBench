#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* event_handler ) (TYPE_1__*) ;} ;
struct pit_data {int cnt; int cycle; TYPE_1__ clkevt; int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AT91_PIT_PITS ; 
 int /*<<< orphan*/  AT91_PIT_PIVR ; 
 int /*<<< orphan*/  AT91_PIT_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct pit_data *data = dev_id;

	/* The PIT interrupt may be disabled, and is shared */
	if (FUNC1(&data->clkevt) &&
	    (FUNC2(data->base, AT91_PIT_SR) & AT91_PIT_PITS)) {
		/* Get number of ticks performed before irq, and ack it */
		data->cnt += data->cycle * FUNC0(FUNC2(data->base,
							      AT91_PIT_PIVR));
		data->clkevt.event_handler(&data->clkevt);

		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}