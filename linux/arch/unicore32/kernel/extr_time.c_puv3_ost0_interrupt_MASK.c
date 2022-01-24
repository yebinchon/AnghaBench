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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OST_OIER ; 
 int OST_OIER_E0 ; 
 int /*<<< orphan*/  OST_OSSR ; 
 int OST_OSSR_M0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct clock_event_device *c = dev_id;

	/* Disarm the compare/match, signal the event. */
	FUNC2(FUNC0(OST_OIER) & ~OST_OIER_E0, OST_OIER);
	FUNC2(FUNC0(OST_OSSR) & ~OST_OSSR_M0, OST_OSSR);
	c->event_handler(c);

	return IRQ_HANDLED;
}