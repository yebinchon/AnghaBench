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
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RASPBERRYPI_FREQ_INTERVAL ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 struct clk* FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpufreq_dt ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int FUNC7 (struct device*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct device* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *cpu_dev;
	unsigned long min, max;
	unsigned long rate;
	struct clk *clk;
	int ret;

	cpu_dev = FUNC9(0);
	if (!cpu_dev) {
		FUNC11("Cannot get CPU for cpufreq driver\n");
		return -ENODEV;
	}

	clk = FUNC3(cpu_dev, NULL);
	if (FUNC0(clk)) {
		FUNC6(cpu_dev, "Cannot get clock for CPU0\n");
		return FUNC1(clk);
	}

	/*
	 * The max and min frequencies are configurable in the Raspberry Pi
	 * firmware, so we query them at runtime.
	 */
	min = FUNC12(FUNC5(clk, 0), RASPBERRYPI_FREQ_INTERVAL);
	max = FUNC12(FUNC5(clk, ULONG_MAX), RASPBERRYPI_FREQ_INTERVAL);
	FUNC4(clk);

	for (rate = min; rate <= max; rate += RASPBERRYPI_FREQ_INTERVAL) {
		ret = FUNC7(cpu_dev, rate, 0);
		if (ret)
			goto remove_opp;
	}

	cpufreq_dt = FUNC10("cpufreq-dt", -1, NULL, 0);
	ret = FUNC2(cpufreq_dt);
	if (ret) {
		FUNC6(cpu_dev, "Failed to create platform device, %d\n", ret);
		goto remove_opp;
	}

	return 0;

remove_opp:
	FUNC8(cpu_dev);

	return ret;
}