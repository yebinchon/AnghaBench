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
struct tegra_gmi {scalar_t__ base; int /*<<< orphan*/  snor_config; int /*<<< orphan*/  snor_timing1; int /*<<< orphan*/  snor_timing0; int /*<<< orphan*/  rst; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ TEGRA_GMI_CONFIG ; 
 int /*<<< orphan*/  TEGRA_GMI_CONFIG_GO ; 
 scalar_t__ TEGRA_GMI_TIMING0 ; 
 scalar_t__ TEGRA_GMI_TIMING1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct tegra_gmi *gmi)
{
	int err;

	err = FUNC0(gmi->clk);
	if (err < 0) {
		FUNC1(gmi->dev, "failed to enable clock: %d\n", err);
		return err;
	}

	FUNC2(gmi->rst);
	FUNC4(2000, 4000);
	FUNC3(gmi->rst);

	FUNC5(gmi->snor_timing0, gmi->base + TEGRA_GMI_TIMING0);
	FUNC5(gmi->snor_timing1, gmi->base + TEGRA_GMI_TIMING1);

	gmi->snor_config |= TEGRA_GMI_CONFIG_GO;
	FUNC5(gmi->snor_config, gmi->base + TEGRA_GMI_CONFIG);

	return 0;
}