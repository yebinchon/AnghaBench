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
struct platform_device_info {char* name; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct clk*,int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hb_cpufreq_clk_nb ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct platform_device_info devinfo = { .name = "cpufreq-dt", };
	struct device *cpu_dev;
	struct clk *cpu_clk;
	struct device_node *np;
	int ret;

	if ((!FUNC5("calxeda,highbank")) &&
		(!FUNC5("calxeda,ecx-2000")))
		return -ENODEV;

	cpu_dev = FUNC4(0);
	if (!cpu_dev) {
		FUNC9("failed to get highbank cpufreq device\n");
		return -ENODEV;
	}

	np = FUNC6(cpu_dev->of_node);
	if (!np) {
		FUNC9("failed to find highbank cpufreq node\n");
		return -ENOENT;
	}

	cpu_clk = FUNC2(cpu_dev, NULL);
	if (FUNC0(cpu_clk)) {
		ret = FUNC1(cpu_clk);
		FUNC9("failed to get cpu0 clock: %d\n", ret);
		goto out_put_node;
	}

	ret = FUNC3(cpu_clk, &hb_cpufreq_clk_nb);
	if (ret) {
		FUNC9("failed to register clk notifier: %d\n", ret);
		goto out_put_node;
	}

	/* Instantiate cpufreq-dt */
	FUNC8(&devinfo);

out_put_node:
	FUNC7(np);
	return ret;
}