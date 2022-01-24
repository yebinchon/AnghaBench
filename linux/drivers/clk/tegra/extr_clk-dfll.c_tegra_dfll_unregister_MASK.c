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
struct tegra_dfll_soc_data {int dummy; } ;
struct tegra_dfll {scalar_t__ mode; struct tegra_dfll_soc_data* soc; int /*<<< orphan*/  dvco_rst; int /*<<< orphan*/  i2c_clk; int /*<<< orphan*/  soc_clk; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  debugfs_dir; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DFLL_DISABLED ; 
 int /*<<< orphan*/  EBUSY ; 
 struct tegra_dfll_soc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dfll*) ; 
 struct tegra_dfll* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct tegra_dfll_soc_data *FUNC8(struct platform_device *pdev)
{
	struct tegra_dfll *td = FUNC5(pdev);

	/* Try to prevent removal while the DFLL is active */
	if (td->mode != DFLL_DISABLED) {
		FUNC3(&pdev->dev,
			"must disable DFLL before removing driver\n");
		return FUNC0(-EBUSY);
	}

	FUNC2(td->debugfs_dir);

	FUNC4(td);
	FUNC6(&pdev->dev);

	FUNC1(td->ref_clk);
	FUNC1(td->soc_clk);
	FUNC1(td->i2c_clk);

	FUNC7(td->dvco_rst);

	return td->soc;
}