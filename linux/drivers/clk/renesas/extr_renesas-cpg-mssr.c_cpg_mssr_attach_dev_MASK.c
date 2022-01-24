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
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct generic_pm_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cpg_mssr_clk_domain {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 struct cpg_mssr_clk_domain* cpg_mssr_clk_domain ; 
 scalar_t__ FUNC3 (struct of_phandle_args*,struct cpg_mssr_clk_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct clk* FUNC5 (struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 int FUNC8 (struct device*,struct clk*) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

int FUNC11(struct generic_pm_domain *unused, struct device *dev)
{
	struct cpg_mssr_clk_domain *pd = cpg_mssr_clk_domain;
	struct device_node *np = dev->of_node;
	struct of_phandle_args clkspec;
	struct clk *clk;
	int i = 0;
	int error;

	if (!pd) {
		FUNC4(dev, "CPG/MSSR clock domain not yet available\n");
		return -EPROBE_DEFER;
	}

	while (!FUNC7(np, "clocks", "#clock-cells", i,
					   &clkspec)) {
		if (FUNC3(&clkspec, pd))
			goto found;

		FUNC6(clkspec.np);
		i++;
	}

	return 0;

found:
	clk = FUNC5(&clkspec);
	FUNC6(clkspec.np);

	if (FUNC0(clk))
		return FUNC1(clk);

	error = FUNC9(dev);
	if (error)
		goto fail_put;

	error = FUNC8(dev, clk);
	if (error)
		goto fail_destroy;

	return 0;

fail_destroy:
	FUNC10(dev);
fail_put:
	FUNC2(clk);
	return error;
}