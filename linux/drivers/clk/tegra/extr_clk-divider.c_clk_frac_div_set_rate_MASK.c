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
struct tegra_clk_frac_div {int shift; int flags; scalar_t__ lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PERIPH_CLK_UART_DIV_ENB ; 
 int TEGRA_DIVIDER_FIXED ; 
 int TEGRA_DIVIDER_UART ; 
 int FUNC0 (struct tegra_clk_frac_div*) ; 
 int FUNC1 (struct tegra_clk_frac_div*,unsigned long,unsigned long) ; 
 int FUNC2 (struct tegra_clk_frac_div*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 struct tegra_clk_frac_div* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct tegra_clk_frac_div *divider = FUNC6(hw);
	int div;
	unsigned long flags = 0;
	u32 val;

	div = FUNC1(divider, rate, parent_rate);
	if (div < 0)
		return div;

	if (divider->lock)
		FUNC4(divider->lock, flags);

	val = FUNC3(divider->reg);
	val &= ~(FUNC0(divider) << divider->shift);
	val |= div << divider->shift;

	if (divider->flags & TEGRA_DIVIDER_UART) {
		if (div)
			val |= PERIPH_CLK_UART_DIV_ENB;
		else
			val &= ~PERIPH_CLK_UART_DIV_ENB;
	}

	if (divider->flags & TEGRA_DIVIDER_FIXED)
		val |= FUNC2(divider);

	FUNC7(val, divider->reg);

	if (divider->lock)
		FUNC5(divider->lock, flags);

	return 0;
}