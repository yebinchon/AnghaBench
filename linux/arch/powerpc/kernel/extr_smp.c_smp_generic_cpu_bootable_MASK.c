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
 int /*<<< orphan*/  CPU_FTR_SMT ; 
 scalar_t__ SYSTEM_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ smt_enabled_at_boot ; 
 scalar_t__ system_state ; 

int FUNC2(unsigned int nr)
{
	/* Special case - we inhibit secondary thread startup
	 * during boot if the user requests it.
	 */
	if (system_state < SYSTEM_RUNNING && FUNC0(CPU_FTR_SMT)) {
		if (!smt_enabled_at_boot && FUNC1(nr) != 0)
			return 0;
		if (smt_enabled_at_boot
		    && FUNC1(nr) >= smt_enabled_at_boot)
			return 0;
	}

	return 1;
}