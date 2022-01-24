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
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_OPTION ; 
 int S5P_USE_STANDBY_WFE0 ; 
 int S5P_USE_STANDBY_WFI0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC1();

	/* Setting SEQ_OPTION register */
	FUNC2(S5P_USE_STANDBY_WFI0 | S5P_USE_STANDBY_WFE0,
		       S5P_CENTRAL_SEQ_OPTION);

	if (FUNC3() == ARM_CPU_PART_CORTEX_A9)
		FUNC0();

	return 0;
}