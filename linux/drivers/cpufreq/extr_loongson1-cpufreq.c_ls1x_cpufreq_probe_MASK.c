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
struct plat_ls1x_cpufreq {int clk_name; int osc_clk_name; int /*<<< orphan*/  min_freq; int /*<<< orphan*/  max_freq; } ;
struct ls1x_cpufreq {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  min_freq; int /*<<< orphan*/  max_freq; struct clk* osc_clk; struct clk* pll_clk; struct clk* mux_clk; struct clk* clk; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (struct clk*) ; 
 TYPE_1__* cpufreq ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 struct plat_ls1x_cpufreq* FUNC8 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ls1x_cpufreq_driver ; 
 int /*<<< orphan*/  ls1x_cpufreq_notifier_block ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct plat_ls1x_cpufreq *pdata = FUNC8(&pdev->dev);
	struct clk *clk;
	int ret;

	if (!pdata || !pdata->clk_name || !pdata->osc_clk_name) {
		FUNC7(&pdev->dev, "platform data missing\n");
		return -EINVAL;
	}

	cpufreq =
	    FUNC10(&pdev->dev, sizeof(struct ls1x_cpufreq), GFP_KERNEL);
	if (!cpufreq)
		return -ENOMEM;

	cpufreq->dev = &pdev->dev;

	clk = FUNC9(&pdev->dev, pdata->clk_name);
	if (FUNC0(clk)) {
		FUNC7(&pdev->dev, "unable to get %s clock\n",
			pdata->clk_name);
		return FUNC1(clk);
	}
	cpufreq->clk = clk;

	clk = FUNC3(clk);
	if (FUNC0(clk)) {
		FUNC7(&pdev->dev, "unable to get parent of %s clock\n",
			FUNC2(cpufreq->clk));
		return FUNC1(clk);
	}
	cpufreq->mux_clk = clk;

	clk = FUNC3(clk);
	if (FUNC0(clk)) {
		FUNC7(&pdev->dev, "unable to get parent of %s clock\n",
			FUNC2(cpufreq->mux_clk));
		return FUNC1(clk);
	}
	cpufreq->pll_clk = clk;

	clk = FUNC9(&pdev->dev, pdata->osc_clk_name);
	if (FUNC0(clk)) {
		FUNC7(&pdev->dev, "unable to get %s clock\n",
			pdata->osc_clk_name);
		return FUNC1(clk);
	}
	cpufreq->osc_clk = clk;

	cpufreq->max_freq = pdata->max_freq;
	cpufreq->min_freq = pdata->min_freq;

	ret = FUNC4(&ls1x_cpufreq_driver);
	if (ret) {
		FUNC7(&pdev->dev,
			"failed to register CPUFreq driver: %d\n", ret);
		return ret;
	}

	ret = FUNC5(&ls1x_cpufreq_notifier_block,
					CPUFREQ_TRANSITION_NOTIFIER);

	if (ret) {
		FUNC7(&pdev->dev,
			"failed to register CPUFreq notifier: %d\n",ret);
		FUNC6(&ls1x_cpufreq_driver);
	}

	return ret;
}