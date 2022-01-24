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
 int /*<<< orphan*/  EFI_RUNTIME_SERVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  reboot_mode ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(char *cmd)
{
	/* Disable interrupts first */
	FUNC4();
	FUNC6();

	/*
	 * UpdateCapsule() depends on the system being reset via
	 * ResetSystem().
	 */
	if (FUNC2(EFI_RUNTIME_SERVICES))
		FUNC3(reboot_mode, NULL);

	/* Now call the architecture specific reboot code. */
	if (&arm_pm_restart)
		FUNC0(reboot_mode, cmd);
	else
		FUNC1(cmd);

	/*
	 * Whoops - the architecture was unable to reboot.
	 */
	FUNC5("Reboot failed -- System halted\n");
	while (1);
}