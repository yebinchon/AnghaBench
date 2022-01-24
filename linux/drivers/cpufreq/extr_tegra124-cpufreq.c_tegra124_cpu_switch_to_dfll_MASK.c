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
struct tegra124_cpufreq_priv {int /*<<< orphan*/  cpu_clk; struct clk* dfll_clk; struct clk* pllp_clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct clk*) ; 
 int FUNC4 (struct clk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tegra124_cpufreq_priv *priv)
{
	struct clk *orig_parent;
	int ret;

	ret = FUNC4(priv->dfll_clk, FUNC1(priv->cpu_clk));
	if (ret)
		return ret;

	orig_parent = FUNC0(priv->cpu_clk);
	FUNC3(priv->cpu_clk, priv->pllp_clk);

	ret = FUNC2(priv->dfll_clk);
	if (ret)
		goto out;

	FUNC3(priv->cpu_clk, priv->dfll_clk);

	return 0;

out:
	FUNC3(priv->cpu_clk, orig_parent);

	return ret;
}