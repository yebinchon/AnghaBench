#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* power_save ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	FUNC5();

	if (ppc_md.power_save) {
		ppc_md.power_save();
		/*
		 * Some power_save functions return with
		 * interrupts enabled, some don't.
		 */
		if (FUNC3())
			FUNC4();
	} else {
		FUNC4();
		/*
		 * Go into low thread priority and possibly
		 * low power mode.
		 */
		FUNC0();
		FUNC2();
	}

	FUNC1();
	FUNC6();
}