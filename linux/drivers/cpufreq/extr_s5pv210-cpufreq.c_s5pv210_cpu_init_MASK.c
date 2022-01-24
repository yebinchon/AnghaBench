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
struct cpufreq_policy {scalar_t__ cpu; void* clk; int /*<<< orphan*/  suspend_freq; } ;
struct TYPE_2__ {int refresh; void* freq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 unsigned long LPDDR ; 
 unsigned long LPDDR2 ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SLEEP_FREQ ; 
 unsigned long FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpufreq_policy*,int /*<<< orphan*/ ,int) ; 
 void* dmc0_clk ; 
 void* dmc1_clk ; 
 scalar_t__* dmc_base ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (scalar_t__) ; 
 TYPE_1__* s5pv210_dram_conf ; 
 int /*<<< orphan*/  s5pv210_freq_table ; 

__attribute__((used)) static int FUNC9(struct cpufreq_policy *policy)
{
	unsigned long mem_type;
	int ret;

	policy->clk = FUNC3(NULL, "armclk");
	if (FUNC0(policy->clk))
		return FUNC1(policy->clk);

	dmc0_clk = FUNC3(NULL, "sclk_dmc0");
	if (FUNC0(dmc0_clk)) {
		ret = FUNC1(dmc0_clk);
		goto out_dmc0;
	}

	dmc1_clk = FUNC3(NULL, "hclk_msys");
	if (FUNC0(dmc1_clk)) {
		ret = FUNC1(dmc1_clk);
		goto out_dmc1;
	}

	if (policy->cpu != 0) {
		ret = -EINVAL;
		goto out_dmc1;
	}

	/*
	 * check_mem_type : This driver only support LPDDR & LPDDR2.
	 * other memory type is not supported.
	 */
	mem_type = FUNC2(dmc_base[0]);

	if ((mem_type != LPDDR) && (mem_type != LPDDR2)) {
		FUNC7("CPUFreq doesn't support this memory type\n");
		ret = -EINVAL;
		goto out_dmc1;
	}

	/* Find current refresh counter and frequency each DMC */
	s5pv210_dram_conf[0].refresh = (FUNC8(dmc_base[0] + 0x30) * 1000);
	s5pv210_dram_conf[0].freq = FUNC4(dmc0_clk);

	s5pv210_dram_conf[1].refresh = (FUNC8(dmc_base[1] + 0x30) * 1000);
	s5pv210_dram_conf[1].freq = FUNC4(dmc1_clk);

	policy->suspend_freq = SLEEP_FREQ;
	FUNC6(policy, s5pv210_freq_table, 40000);
	return 0;

out_dmc1:
	FUNC5(dmc0_clk);
out_dmc0:
	FUNC5(policy->clk);
	return ret;
}