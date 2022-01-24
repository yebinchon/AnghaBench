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
struct s3c64xx_dvfs {int /*<<< orphan*/  vddarm_max; int /*<<< orphan*/  vddarm_min; } ;
struct cpufreq_policy {int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {unsigned int frequency; size_t driver_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s3c64xx_dvfs* s3c64xx_dvfs_table ; 
 TYPE_1__* s3c64xx_freq_table ; 
 scalar_t__ vddarm ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy,
				      unsigned int index)
{
	struct s3c64xx_dvfs *dvfs;
	unsigned int old_freq, new_freq;
	int ret;

	old_freq = FUNC0(policy->clk) / 1000;
	new_freq = s3c64xx_freq_table[index].frequency;
	dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[index].driver_data];

#ifdef CONFIG_REGULATOR
	if (vddarm && new_freq > old_freq) {
		ret = regulator_set_voltage(vddarm,
					    dvfs->vddarm_min,
					    dvfs->vddarm_max);
		if (ret != 0) {
			pr_err("Failed to set VDDARM for %dkHz: %d\n",
			       new_freq, ret);
			return ret;
		}
	}
#endif

	ret = FUNC1(policy->clk, new_freq * 1000);
	if (ret < 0) {
		FUNC3("Failed to set rate %dkHz: %d\n",
		       new_freq, ret);
		return ret;
	}

#ifdef CONFIG_REGULATOR
	if (vddarm && new_freq < old_freq) {
		ret = regulator_set_voltage(vddarm,
					    dvfs->vddarm_min,
					    dvfs->vddarm_max);
		if (ret != 0) {
			pr_err("Failed to set VDDARM for %dkHz: %d\n",
			       new_freq, ret);
			if (clk_set_rate(policy->clk, old_freq * 1000) < 0)
				pr_err("Failed to restore original clock rate\n");

			return ret;
		}
	}
#endif

	FUNC2("Set actual frequency %lukHz\n",
		 FUNC0(policy->clk) / 1000);

	return 0;
}