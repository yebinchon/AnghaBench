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
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk*,struct clk*) ; 
 int FUNC4 (struct clk*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__ spear_cpufreq ; 

__attribute__((used)) static int FUNC6(struct clk *sys_pclk, unsigned long newfreq)
{
	struct clk *sys_clk;
	int ret = 0;

	sys_clk = FUNC2(spear_cpufreq.clk);
	if (FUNC0(sys_clk)) {
		FUNC5("failed to get cpu's parent (sys) clock\n");
		return FUNC1(sys_clk);
	}

	/* Set the rate of the source clock before changing the parent */
	ret = FUNC4(sys_pclk, newfreq);
	if (ret) {
		FUNC5("Failed to set sys clk rate to %lu\n", newfreq);
		return ret;
	}

	ret = FUNC3(sys_clk, sys_pclk);
	if (ret) {
		FUNC5("Failed to set sys clk parent\n");
		return ret;
	}

	return 0;
}