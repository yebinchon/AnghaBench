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
struct uniphier_clk_mux {unsigned int* masks; unsigned int* vals; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct uniphier_clk_mux* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct uniphier_clk_mux *mux = FUNC2(hw);
	int num_parents = FUNC0(hw);
	int ret;
	unsigned int val;
	u8 i;

	ret = FUNC1(mux->regmap, mux->reg, &val);
	if (ret)
		return ret;

	for (i = 0; i < num_parents; i++)
		if ((mux->masks[i] & val) == mux->vals[i])
			return i;

	return -EINVAL;
}