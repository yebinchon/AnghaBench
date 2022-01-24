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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cpufreq_dt_platform_data {scalar_t__ suspend; int /*<<< orphan*/  resume; scalar_t__ have_governor_per_policy; } ;
struct TYPE_3__ {scalar_t__ suspend; int /*<<< orphan*/  resume; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_HAVE_GOVERNOR_PER_POLICY ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct cpufreq_dt_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ dt_cpufreq_driver ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct cpufreq_dt_platform_data *data = FUNC2(&pdev->dev);
	int ret;

	/*
	 * All per-cluster (CPUs sharing clock/voltages) initialization is done
	 * from ->init(). In probe(), we just need to make sure that clk and
	 * regulators are available. Else defer probe and retry.
	 *
	 * FIXME: Is checking this only for CPU0 sufficient ?
	 */
	ret = FUNC3();
	if (ret)
		return ret;

	if (data) {
		if (data->have_governor_per_policy)
			dt_cpufreq_driver.flags |= CPUFREQ_HAVE_GOVERNOR_PER_POLICY;

		dt_cpufreq_driver.resume = data->resume;
		if (data->suspend)
			dt_cpufreq_driver.suspend = data->suspend;
	}

	ret = FUNC0(&dt_cpufreq_driver);
	if (ret)
		FUNC1(&pdev->dev, "failed register driver: %d\n", ret);

	return ret;
}