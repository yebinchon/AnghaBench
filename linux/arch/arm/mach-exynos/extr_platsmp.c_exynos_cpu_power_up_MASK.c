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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S5P_CORE_AUTOWAKEUP_EN ; 
 int /*<<< orphan*/  S5P_CORE_LOCAL_PWR_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(int cpu)
{
	u32 core_conf = S5P_CORE_LOCAL_PWR_EN;

	if (FUNC2())
		core_conf |= S5P_CORE_AUTOWAKEUP_EN;

	FUNC1(core_conf,
			FUNC0(cpu));
}