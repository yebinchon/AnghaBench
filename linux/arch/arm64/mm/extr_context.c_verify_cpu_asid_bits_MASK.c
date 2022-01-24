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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ asid_bits ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	u32 asid = FUNC1();

	if (asid < asid_bits) {
		/*
		 * We cannot decrease the ASID size at runtime, so panic if we support
		 * fewer ASID bits than the boot CPU.
		 */
		FUNC2("CPU%d: smaller ASID size(%u) than boot CPU (%u)\n",
				FUNC3(), asid, asid_bits);
		FUNC0();
	}
}