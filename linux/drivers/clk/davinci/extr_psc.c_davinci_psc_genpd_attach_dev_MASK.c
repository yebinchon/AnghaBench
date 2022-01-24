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
struct generic_pm_domain {int dummy; } ;
struct device {int dummy; } ;
struct davinci_lpsc_clk {struct clk* genpd_clk; int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int FUNC6 (struct device*,struct clk*) ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct davinci_lpsc_clk* FUNC9 (struct generic_pm_domain*) ; 

__attribute__((used)) static int FUNC10(struct generic_pm_domain *pm_domain,
					struct device *dev)
{
	struct davinci_lpsc_clk *lpsc = FUNC9(pm_domain);
	struct clk *clk;
	int ret;

	/*
	 * pm_clk_remove_clk() will call clk_put(), so we have to use clk_get()
	 * to get the clock instead of using lpsc->hw.clk directly.
	 */
	clk = FUNC3(FUNC2(lpsc->dev), FUNC4(&lpsc->hw));
	if (FUNC0(clk))
		return (FUNC1(clk));

	ret = FUNC7(dev);
	if (ret < 0)
		goto fail_clk_put;

	ret = FUNC6(dev, clk);
	if (ret < 0)
		goto fail_pm_clk_destroy;

	lpsc->genpd_clk = clk;

	return 0;

fail_pm_clk_destroy:
	FUNC8(dev);
fail_clk_put:
	FUNC5(clk);

	return ret;
}