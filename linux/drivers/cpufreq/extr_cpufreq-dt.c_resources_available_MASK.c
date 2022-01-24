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
struct regulator {int dummy; } ;
struct device {int dummy; } ;
typedef  struct regulator clk ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int FUNC0 (struct regulator*) ; 
 struct regulator* FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 char* FUNC5 (struct device*) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct regulator* FUNC8 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct regulator*) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct device *cpu_dev;
	struct regulator *cpu_reg;
	struct clk *cpu_clk;
	int ret = 0;
	const char *name;

	cpu_dev = FUNC6(0);
	if (!cpu_dev) {
		FUNC7("failed to get cpu0 device\n");
		return -ENODEV;
	}

	cpu_clk = FUNC1(cpu_dev, NULL);
	ret = FUNC0(cpu_clk);
	if (ret) {
		/*
		 * If cpu's clk node is present, but clock is not yet
		 * registered, we should try defering probe.
		 */
		if (ret == -EPROBE_DEFER)
			FUNC3(cpu_dev, "clock not ready, retry\n");
		else
			FUNC4(cpu_dev, "failed to get clock: %d\n", ret);

		return ret;
	}

	FUNC2(cpu_clk);

	name = FUNC5(cpu_dev);
	/* Platform doesn't require regulator */
	if (!name)
		return 0;

	cpu_reg = FUNC8(cpu_dev, name);
	ret = FUNC0(cpu_reg);
	if (ret) {
		/*
		 * If cpu's regulator supply node is present, but regulator is
		 * not yet registered, we should try defering probe.
		 */
		if (ret == -EPROBE_DEFER)
			FUNC3(cpu_dev, "cpu0 regulator not ready, retry\n");
		else
			FUNC3(cpu_dev, "no regulator for cpu0: %d\n", ret);

		return ret;
	}

	FUNC9(cpu_reg);
	return 0;
}