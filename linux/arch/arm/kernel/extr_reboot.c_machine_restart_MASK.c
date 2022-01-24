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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  reboot_mode ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(char *cmd)
{
	FUNC2();
	FUNC5();

	if (&arm_pm_restart)
		FUNC0(reboot_mode, cmd);
	else
		FUNC1(cmd);

	/* Give a grace period for failure to restart of 1s */
	FUNC3(1000);

	/* Whoops - the platform was unable to reboot. Tell the user! */
	FUNC4("Reboot failed -- System halted\n");
	while (1);
}