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
struct zx_pll_config {int /*<<< orphan*/  cfg1; int /*<<< orphan*/  cfg0; } ;
struct clk_zx_pll {scalar_t__ reg_base; struct zx_pll_config* lookup_table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ CFG0_CFG1_OFFSET ; 
 int FUNC0 (struct clk_zx_pll*,unsigned long) ; 
 struct clk_zx_pll* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
			   unsigned long parent_rate)
{
	/* Assume current cpu is not running on current PLL */
	struct clk_zx_pll *zx_pll = FUNC1(hw);
	const struct zx_pll_config *config;
	int idx;

	idx = FUNC0(zx_pll, rate);
	config = &zx_pll->lookup_table[idx];

	FUNC2(config->cfg0, zx_pll->reg_base);
	FUNC2(config->cfg1, zx_pll->reg_base + CFG0_CFG1_OFFSET);

	return 0;
}