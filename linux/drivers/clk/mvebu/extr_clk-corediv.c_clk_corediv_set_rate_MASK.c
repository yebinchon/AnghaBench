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
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct clk_corediv_soc_desc {int ratio_reload; scalar_t__ ratio_offset; } ;
struct clk_corediv_desc {int mask; int offset; int /*<<< orphan*/  fieldbit; } ;
struct clk_corediv {int /*<<< orphan*/  lock; scalar_t__ reg; struct clk_corediv_desc* desc; struct clk_corediv_soc_desc* soc_desc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CORE_CLK_DIV_RATIO_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_corediv* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hwclk, unsigned long rate,
			    unsigned long parent_rate)
{
	struct clk_corediv *corediv = FUNC4(hwclk);
	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
	const struct clk_corediv_desc *desc = corediv->desc;
	unsigned long flags = 0;
	u32 reg, div;

	div = parent_rate / rate;

	FUNC2(&corediv->lock, flags);

	/* Write new divider to the divider ratio register */
	reg = FUNC1(corediv->reg + soc_desc->ratio_offset);
	reg &= ~(desc->mask << desc->offset);
	reg |= (div & desc->mask) << desc->offset;
	FUNC6(reg, corediv->reg + soc_desc->ratio_offset);

	/* Set reload-force for this clock */
	reg = FUNC1(corediv->reg) | FUNC0(desc->fieldbit);
	FUNC6(reg, corediv->reg);

	/* Now trigger the clock update */
	reg = FUNC1(corediv->reg) | soc_desc->ratio_reload;
	FUNC6(reg, corediv->reg);

	/*
	 * Wait for clocks to settle down, and then clear all the
	 * ratios request and the reload request.
	 */
	FUNC5(1000);
	reg &= ~(CORE_CLK_DIV_RATIO_MASK | soc_desc->ratio_reload);
	FUNC6(reg, corediv->reg);
	FUNC5(1000);

	FUNC3(&corediv->lock, flags);

	return 0;
}