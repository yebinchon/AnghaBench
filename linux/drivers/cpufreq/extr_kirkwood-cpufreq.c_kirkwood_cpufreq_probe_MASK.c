#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int frequency; } ;
struct TYPE_3__ {void* cpu_clk; void* ddr_clk; void* powersave_clk; int /*<<< orphan*/ * dev; void* base; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  kirkwood_cpufreq_driver ; 
 TYPE_2__* kirkwood_freq_table ; 
 void* FUNC8 (struct device_node*,char*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ priv ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np;
	struct resource *res;
	int err;

	priv.dev = &pdev->dev;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	priv.base = FUNC7(&pdev->dev, res);
	if (FUNC0(priv.base))
		return FUNC1(priv.base);

	np = FUNC9(0);
	if (!np) {
		FUNC6(&pdev->dev, "failed to get cpu device node\n");
		return -ENODEV;
	}

	priv.cpu_clk = FUNC8(np, "cpu_clk");
	if (FUNC0(priv.cpu_clk)) {
		FUNC6(priv.dev, "Unable to get cpuclk\n");
		err = FUNC1(priv.cpu_clk);
		goto out_node;
	}

	err = FUNC4(priv.cpu_clk);
	if (err) {
		FUNC6(priv.dev, "Unable to prepare cpuclk\n");
		goto out_node;
	}

	kirkwood_freq_table[0].frequency = FUNC3(priv.cpu_clk) / 1000;

	priv.ddr_clk = FUNC8(np, "ddrclk");
	if (FUNC0(priv.ddr_clk)) {
		FUNC6(priv.dev, "Unable to get ddrclk\n");
		err = FUNC1(priv.ddr_clk);
		goto out_cpu;
	}

	err = FUNC4(priv.ddr_clk);
	if (err) {
		FUNC6(priv.dev, "Unable to prepare ddrclk\n");
		goto out_cpu;
	}
	kirkwood_freq_table[1].frequency = FUNC3(priv.ddr_clk) / 1000;

	priv.powersave_clk = FUNC8(np, "powersave");
	if (FUNC0(priv.powersave_clk)) {
		FUNC6(priv.dev, "Unable to get powersave\n");
		err = FUNC1(priv.powersave_clk);
		goto out_ddr;
	}
	err = FUNC4(priv.powersave_clk);
	if (err) {
		FUNC6(priv.dev, "Unable to prepare powersave clk\n");
		goto out_ddr;
	}

	err = FUNC5(&kirkwood_cpufreq_driver);
	if (err) {
		FUNC6(priv.dev, "Failed to register cpufreq driver\n");
		goto out_powersave;
	}

	FUNC10(np);
	return 0;

out_powersave:
	FUNC2(priv.powersave_clk);
out_ddr:
	FUNC2(priv.ddr_clk);
out_cpu:
	FUNC2(priv.cpu_clk);
out_node:
	FUNC10(np);

	return err;
}