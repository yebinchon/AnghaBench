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
typedef  int u64 ;

/* Variables and functions */
 int OPAL_PM_WINKLE_ENABLED ; 
 int /*<<< orphan*/  SPRN_HID0 ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(u64 hid0)
{
	u64 idle_states = FUNC2();

	if (idle_states & OPAL_PM_WINKLE_ENABLED) {
		/* OPAL call to patch slw with the new HID0 value */
		u64 cpu_pir = FUNC0();

		FUNC1(cpu_pir, SPRN_HID0, hid0);
	}
}