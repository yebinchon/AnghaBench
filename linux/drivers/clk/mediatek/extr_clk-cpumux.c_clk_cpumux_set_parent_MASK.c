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
typedef  int u8 ;
typedef  int u32 ;
struct mtk_clk_cpumux {int shift; int mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct mtk_clk_cpumux* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct mtk_clk_cpumux *mux = FUNC1(hw);
	u32 mask, val;

	val = index << mux->shift;
	mask = mux->mask << mux->shift;

	return FUNC0(mux->regmap, mux->reg, mask, val);
}