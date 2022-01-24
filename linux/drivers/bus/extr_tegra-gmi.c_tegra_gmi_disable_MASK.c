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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_gmi {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TEGRA_GMI_CONFIG ; 
 int /*<<< orphan*/  TEGRA_GMI_CONFIG_GO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tegra_gmi *gmi)
{
	u32 config;

	/* stop GMI operation */
	config = FUNC1(gmi->base + TEGRA_GMI_CONFIG);
	config &= ~TEGRA_GMI_CONFIG_GO;
	FUNC3(config, gmi->base + TEGRA_GMI_CONFIG);

	FUNC2(gmi->rst);
	FUNC0(gmi->clk);
}