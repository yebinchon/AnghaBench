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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
#define  ARMV8_PMU_CYCLE_IDX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  pmccfiltr_el0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int idx, u32 val)
{
	switch (idx) {
	FUNC0(WRITE);
	case ARMV8_PMU_CYCLE_IDX:
		FUNC2(val, pmccfiltr_el0);
		break;
	default:
		FUNC1(1);
	}
}