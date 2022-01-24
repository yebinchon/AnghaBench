#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {struct clk* clk; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {unsigned long frequency; } ;

/* Variables and functions */
 unsigned long CPUFREQ_TABLE_END ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*,unsigned long) ; 
 int cpu_clock_freq ; 
 int /*<<< orphan*/  FUNC5 (struct cpufreq_policy*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* loongson2_clockmod_table ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct cpufreq_policy *policy)
{
	struct clk *cpuclk;
	int i;
	unsigned long rate;
	int ret;

	cpuclk = FUNC2(NULL, "cpu_clk");
	if (FUNC0(cpuclk)) {
		FUNC6("couldn't get CPU clk\n");
		return FUNC1(cpuclk);
	}

	rate = cpu_clock_freq / 1000;
	if (!rate) {
		FUNC3(cpuclk);
		return -EINVAL;
	}

	/* clock table init */
	for (i = 2;
	     (loongson2_clockmod_table[i].frequency != CPUFREQ_TABLE_END);
	     i++)
		loongson2_clockmod_table[i].frequency = (rate * i) / 8;

	ret = FUNC4(cpuclk, rate * 1000);
	if (ret) {
		FUNC3(cpuclk);
		return ret;
	}

	policy->clk = cpuclk;
	FUNC5(policy, &loongson2_clockmod_table[0], 0);
	return 0;
}