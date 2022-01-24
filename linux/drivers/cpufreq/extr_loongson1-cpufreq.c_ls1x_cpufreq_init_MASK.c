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
struct device {int dummy; } ;
struct cpufreq_policy {int /*<<< orphan*/  clk; int /*<<< orphan*/  cpu; } ;
struct cpufreq_frequency_table {unsigned int frequency; } ;
struct TYPE_2__ {unsigned int min_freq; unsigned int max_freq; int /*<<< orphan*/  clk; int /*<<< orphan*/  pll_clk; } ;

/* Variables and functions */
 unsigned int CPUFREQ_ENTRY_INVALID ; 
 unsigned int CPUFREQ_TABLE_END ; 
 int DIV_CPU_WIDTH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpufreq ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,struct cpufreq_frequency_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,unsigned int) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct cpufreq_frequency_table* FUNC4 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy)
{
	struct device *cpu_dev = FUNC3(policy->cpu);
	struct cpufreq_frequency_table *freq_tbl;
	unsigned int pll_freq, freq;
	int steps, i;

	pll_freq = FUNC0(cpufreq->pll_clk) / 1000;

	steps = 1 << DIV_CPU_WIDTH;
	freq_tbl = FUNC4(steps, sizeof(*freq_tbl), GFP_KERNEL);
	if (!freq_tbl)
		return -ENOMEM;

	for (i = 0; i < (steps - 1); i++) {
		freq = pll_freq / (i + 1);
		if ((freq < cpufreq->min_freq) || (freq > cpufreq->max_freq))
			freq_tbl[i].frequency = CPUFREQ_ENTRY_INVALID;
		else
			freq_tbl[i].frequency = freq;
		FUNC2(cpu_dev,
			"cpufreq table: index %d: frequency %d\n", i,
			freq_tbl[i].frequency);
	}
	freq_tbl[i].frequency = CPUFREQ_TABLE_END;

	policy->clk = cpufreq->clk;
	FUNC1(policy, freq_tbl, 0);

	return 0;
}