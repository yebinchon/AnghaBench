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
typedef  long long u32 ;

/* Variables and functions */
 long long CORE_CLK_SRC_32K ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dpll_core_ck ; 
 long long FUNC1 (int /*<<< orphan*/ ) ; 
 long long FUNC2 () ; 

unsigned long FUNC3(void)
{
	long long core_clk;
	u32 v;

	FUNC0(!dpll_core_ck);

	core_clk = FUNC1(dpll_core_ck);

	v = FUNC2();

	if (v == CORE_CLK_SRC_32K)
		core_clk = 32768;
	else
		core_clk *= v;

	return core_clk;
}