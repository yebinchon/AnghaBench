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
 int /*<<< orphan*/  CONFIG_LOCKDEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diagnose_trace_depth ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned int* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(int diag_nr)
{
	unsigned long flags;
	unsigned int *depth;

	/* Avoid lockdep recursion. */
	if (FUNC0(CONFIG_LOCKDEP))
		return;
	FUNC2(flags);
	depth = FUNC3(&diagnose_trace_depth);
	if (*depth == 0) {
		(*depth)++;
		FUNC4(diag_nr);
		(*depth)--;
	}
	FUNC1(flags);
}