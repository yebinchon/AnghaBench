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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct axxia_clkmux {int shift; int width; int /*<<< orphan*/  reg; } ;
struct axxia_clk {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct axxia_clk* FUNC1 (struct clk_hw*) ; 
 struct axxia_clkmux* FUNC2 (struct axxia_clk*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct axxia_clk *aclk = FUNC1(hw);
	struct axxia_clkmux *mux = FUNC2(aclk);
	u32 ctrl, parent;

	FUNC0(aclk->regmap, mux->reg, &ctrl);
	parent = (ctrl >> mux->shift) & ((1 << mux->width) - 1);

	return (u8) parent;
}