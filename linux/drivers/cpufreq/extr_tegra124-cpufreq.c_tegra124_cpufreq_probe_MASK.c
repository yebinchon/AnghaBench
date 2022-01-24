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
struct tegra124_cpufreq_priv {void* cpu_clk; void* dfll_clk; void* pllx_clk; void* pllp_clk; void* cpufreq_dt_pdev; } ;
struct platform_device_info {char* name; int /*<<< orphan*/ * parent; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct tegra124_cpufreq_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device_node*,char*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 void* FUNC8 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct tegra124_cpufreq_priv*) ; 
 int FUNC10 (struct tegra124_cpufreq_priv*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct tegra124_cpufreq_priv *priv;
	struct device_node *np;
	struct device *cpu_dev;
	struct platform_device_info cpufreq_dt_devinfo = {};
	int ret;

	priv = FUNC3(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	cpu_dev = FUNC4(0);
	if (!cpu_dev)
		return -ENODEV;

	np = FUNC6(0);
	if (!np)
		return -ENODEV;

	priv->cpu_clk = FUNC5(np, "cpu_g");
	if (FUNC0(priv->cpu_clk)) {
		ret = FUNC1(priv->cpu_clk);
		goto out_put_np;
	}

	priv->dfll_clk = FUNC5(np, "dfll");
	if (FUNC0(priv->dfll_clk)) {
		ret = FUNC1(priv->dfll_clk);
		goto out_put_cpu_clk;
	}

	priv->pllx_clk = FUNC5(np, "pll_x");
	if (FUNC0(priv->pllx_clk)) {
		ret = FUNC1(priv->pllx_clk);
		goto out_put_dfll_clk;
	}

	priv->pllp_clk = FUNC5(np, "pll_p");
	if (FUNC0(priv->pllp_clk)) {
		ret = FUNC1(priv->pllp_clk);
		goto out_put_pllx_clk;
	}

	ret = FUNC10(priv);
	if (ret)
		goto out_put_pllp_clk;

	cpufreq_dt_devinfo.name = "cpufreq-dt";
	cpufreq_dt_devinfo.parent = &pdev->dev;

	priv->cpufreq_dt_pdev =
		FUNC8(&cpufreq_dt_devinfo);
	if (FUNC0(priv->cpufreq_dt_pdev)) {
		ret = FUNC1(priv->cpufreq_dt_pdev);
		goto out_put_pllp_clk;
	}

	FUNC9(pdev, priv);

	FUNC7(np);

	return 0;

out_put_pllp_clk:
	FUNC2(priv->pllp_clk);
out_put_pllx_clk:
	FUNC2(priv->pllx_clk);
out_put_dfll_clk:
	FUNC2(priv->dfll_clk);
out_put_cpu_clk:
	FUNC2(priv->cpu_clk);
out_put_np:
	FUNC7(np);

	return ret;
}