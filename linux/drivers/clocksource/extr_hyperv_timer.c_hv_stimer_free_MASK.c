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

/* Variables and functions */
 scalar_t__ direct_mode_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hv_clock_event ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ stimer0_irq ; 

void FUNC2(void)
{
	if (direct_mode_enabled && (stimer0_irq != 0)) {
		FUNC1(stimer0_irq);
		stimer0_irq = 0;
	}
	FUNC0(hv_clock_event);
	hv_clock_event = NULL;
}