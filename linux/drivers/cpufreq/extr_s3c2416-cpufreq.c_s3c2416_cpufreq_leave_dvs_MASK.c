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
struct s3c2416_dvfs {int /*<<< orphan*/  vddarm_max; int /*<<< orphan*/  vddarm_min; } ;
struct s3c2416_data {scalar_t__ is_dvs; int /*<<< orphan*/  armdiv; int /*<<< orphan*/  armclk; int /*<<< orphan*/  hclk; scalar_t__ vddarm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct s3c2416_data*,int) ; 
 struct s3c2416_dvfs* s3c2416_dvfs_table ; 

__attribute__((used)) static int FUNC6(struct s3c2416_data *s3c_freq, int idx)
{
#ifdef CONFIG_ARM_S3C2416_CPUFREQ_VCORESCALE
	struct s3c2416_dvfs *dvfs;
#endif
	int ret;

	if (!s3c_freq->is_dvs) {
		FUNC2("cpufreq: not in dvs mode, so can't leave\n");
		return 0;
	}

#ifdef CONFIG_ARM_S3C2416_CPUFREQ_VCORESCALE
	if (s3c_freq->vddarm) {
		dvfs = &s3c2416_dvfs_table[idx];

		pr_debug("cpufreq: setting regulator to %d-%d\n",
			 dvfs->vddarm_min, dvfs->vddarm_max);
		ret = regulator_set_voltage(s3c_freq->vddarm,
					    dvfs->vddarm_min,
					    dvfs->vddarm_max);
		if (ret != 0) {
			pr_err("cpufreq: Failed to set VDDARM: %d\n", ret);
			return ret;
		}
	}
#endif

	/* force armdiv to hclk frequency for transition from dvs*/
	if (FUNC0(s3c_freq->armdiv) > FUNC0(s3c_freq->hclk)) {
		FUNC2("cpufreq: force armdiv to hclk frequency (%lukHz)\n",
			 FUNC0(s3c_freq->hclk) / 1000);
		ret = FUNC5(s3c_freq,
					FUNC0(s3c_freq->hclk) / 1000);
		if (ret < 0) {
			FUNC3("cpufreq: Failed to set the armdiv to %lukHz: %d\n",
			       FUNC0(s3c_freq->hclk) / 1000, ret);
			return ret;
		}
	}

	FUNC2("cpufreq: switching armclk parent to armdiv (%lukHz)\n",
			FUNC0(s3c_freq->armdiv) / 1000);

	ret = FUNC1(s3c_freq->armclk, s3c_freq->armdiv);
	if (ret < 0) {
		FUNC3("cpufreq: Failed to switch armclk clock parent to armdiv: %d\n",
		       ret);
		return ret;
	}

	s3c_freq->is_dvs = 0;

	return 0;
}