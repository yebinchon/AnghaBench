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
 unsigned char DEFAULT_PRIORITY ; 
 unsigned char LOWEST_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 

__attribute__((used)) static void FUNC3(unsigned char cppr)
{
	/*
	 * Here be dragons. The caller has asked to allow only IPI's and not
	 * external interrupts. But OPAL XIVE doesn't support that. So instead
	 * of allowing no interrupts allow all. That's still not right, but
	 * currently the only caller who does this is xics_migrate_irqs_away()
	 * and it works in that case.
	 */
	if (cppr >= DEFAULT_PRIORITY)
		cppr = LOWEST_PRIORITY;

	FUNC2(cppr);
	FUNC1(cppr);
	FUNC0();
}