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
struct arch_hw_breakpoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_207S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_brk ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct arch_hw_breakpoint*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct arch_hw_breakpoint*) ; 
 int /*<<< orphan*/  FUNC5 (struct arch_hw_breakpoint*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct arch_hw_breakpoint *brk)
{
	FUNC3(FUNC6(&current_brk), brk, sizeof(*brk));

	if (FUNC2())
		// Power8 or later
		FUNC5(brk);
	else if (!FUNC1(CPU_FTR_ARCH_207S))
		// Power7 or earlier
		FUNC4(brk);
	else
		// Shouldn't happen due to higher level checks
		FUNC0(1);
}