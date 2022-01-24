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
 int BP_SRC_SCR_CORE1_ENABLE ; 
 int BP_SRC_SCR_CORE1_RST ; 
 scalar_t__ SRC_SCR ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  scr_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ src_base ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

void FUNC5(int cpu, bool enable)
{
	u32 mask, val;

	cpu = FUNC0(cpu);
	mask = 1 << (BP_SRC_SCR_CORE1_ENABLE + cpu - 1);
	FUNC2(&scr_lock);
	val = FUNC1(src_base + SRC_SCR);
	val = enable ? val | mask : val & ~mask;
	val |= 1 << (BP_SRC_SCR_CORE1_RST + cpu - 1);
	FUNC4(val, src_base + SRC_SCR);
	FUNC3(&scr_lock);
}