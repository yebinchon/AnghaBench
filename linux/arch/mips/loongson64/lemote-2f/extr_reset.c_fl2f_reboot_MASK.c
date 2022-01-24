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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIVIL_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC3();

	/* send a reset signal to south bridge.
	 *
	 * NOTE: if enable "Power Management" in kernel, rtl8169 will not reset
	 * normally with this reset operation and it will not work in PMON, but
	 * you can type halt command and then reboot, seems the hardware reset
	 * logic not work normally.
	 */
	{
		u32 hi, lo;
		FUNC1(FUNC0(DIVIL_SOFT_RESET), &hi, &lo);
		lo |= 0x00000001;
		FUNC2(FUNC0(DIVIL_SOFT_RESET), hi, lo);
	}
}