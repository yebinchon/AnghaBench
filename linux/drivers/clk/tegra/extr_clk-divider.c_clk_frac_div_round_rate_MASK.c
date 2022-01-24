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
struct tegra_clk_frac_div {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (unsigned long,int) ; 
 int FUNC1 (struct tegra_clk_frac_div*,unsigned long,unsigned long) ; 
 int FUNC2 (struct tegra_clk_frac_div*) ; 
 struct tegra_clk_frac_div* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw, unsigned long rate,
				   unsigned long *prate)
{
	struct tegra_clk_frac_div *divider = FUNC3(hw);
	int div, mul;
	unsigned long output_rate = *prate;

	if (!rate)
		return output_rate;

	div = FUNC1(divider, rate, output_rate);
	if (div < 0)
		return *prate;

	mul = FUNC2(divider);

	return FUNC0(output_rate * mul, div + mul);
}