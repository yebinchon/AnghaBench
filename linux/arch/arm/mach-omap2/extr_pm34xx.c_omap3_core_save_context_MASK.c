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
 scalar_t__ OMAP343X_CONTROL_MEM_WKUP ; 
 int /*<<< orphan*/  OMAP343X_PADCONF_ETK_D14 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	FUNC1();

	/*
	 * Force write last pad into memory, as this can fail in some
	 * cases according to errata 1.157, 1.185
	 */
	FUNC4(FUNC3(OMAP343X_PADCONF_ETK_D14),
		OMAP343X_CONTROL_MEM_WKUP + 0x2a0);

	/* Save the Interrupt controller context */
	FUNC6();
	/* Save the GPMC context */
	FUNC2();
	/* Save the system control module context, padconf already save above*/
	FUNC0();
	FUNC5();
}