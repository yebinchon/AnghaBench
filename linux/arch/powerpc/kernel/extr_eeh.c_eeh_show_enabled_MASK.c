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
 int /*<<< orphan*/  EEH_ENABLED ; 
 int /*<<< orphan*/  EEH_FORCE_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	if (FUNC0(EEH_FORCE_DISABLED))
		FUNC1("EEH: Recovery disabled by kernel parameter.\n");
	else if (FUNC0(EEH_ENABLED))
		FUNC1("EEH: Capable adapter found: recovery enabled.\n");
	else
		FUNC1("EEH: No capable adapters found: recovery disabled.\n");
}