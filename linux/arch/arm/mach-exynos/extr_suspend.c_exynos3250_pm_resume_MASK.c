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
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_OPTION ; 
 int /*<<< orphan*/  S5P_INFORM1 ; 
 int S5P_USE_STANDBY_WFI_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  resume ; 

__attribute__((used)) static void FUNC5(void)
{
	u32 cpuid = FUNC4();

	if (FUNC2())
		goto early_wakeup;

	FUNC3(S5P_USE_STANDBY_WFI_ALL, S5P_CENTRAL_SEQ_OPTION);

	if (FUNC0(resume) == -ENOSYS
	    && cpuid == ARM_CPU_PART_CORTEX_A9)
		FUNC1();

early_wakeup:

	/* Clear SLEEP mode set in INFORM1 */
	FUNC3(0x0, S5P_INFORM1);
}