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
 int XICS_IPI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
	/*
	 * We take the ipi irq but and never return so we need to EOI the IPI,
	 * but want to leave our priority 0.
	 *
	 * Should we check all the other interrupts too?
	 * Should we be flagging idle loop instead?
	 * Or creating some task to be scheduled?
	 */
	if (FUNC1((0x00 << 24) | XICS_IPI) > 0)
		FUNC0();
}