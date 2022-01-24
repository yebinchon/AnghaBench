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
struct tegra_clk_pll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLLC4_MISC0_DEFAULT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct tegra_clk_pll*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct tegra_clk_pll *pllc4)
{
	FUNC0("PLL_C4", pllc4, PLLC4_MISC0_DEFAULT_VALUE, 0, 0, 0);
}