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
struct axxia_divclk {int shift; int width; int /*<<< orphan*/  reg; } ;
struct axxia_clk {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct axxia_clk* FUNC1 (struct clk_hw*) ; 
 struct axxia_divclk* FUNC2 (struct axxia_clk*) ; 

__attribute__((used)) static unsigned long
FUNC3(struct clk_hw *hw, unsigned long parent_rate)
{
	struct axxia_clk *aclk = FUNC1(hw);
	struct axxia_divclk *divclk = FUNC2(aclk);
	u32 ctrl, div;

	FUNC0(aclk->regmap, divclk->reg, &ctrl);
	div = 1 + ((ctrl >> divclk->shift) & ((1 << divclk->width)-1));

	return parent_rate / div;
}