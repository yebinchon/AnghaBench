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
 int /*<<< orphan*/  CONFIG_PCI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSTCTL_RESET_PCI ; 
 int /*<<< orphan*/  RSTCTL_RESET_SYSTEM ; 
 int /*<<< orphan*/  SYSC_REG_RESET_CTRL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(char *command)
{
	if (FUNC0(CONFIG_PCI)) {
		FUNC3(0, RSTCTL_RESET_PCI, SYSC_REG_RESET_CTRL);
		FUNC2(50);
	}

	FUNC1();
	FUNC4(RSTCTL_RESET_SYSTEM, SYSC_REG_RESET_CTRL);
	FUNC5();
}