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
struct mmp_clk_mix_clk_table {scalar_t__ valid; int parent_index; unsigned int divisor; } ;
struct mmp_clk_mix {int table_size; struct mmp_clk_mix_clk_table* table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mmp_clk_mix*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_mix*,int) ; 
 int FUNC2 (struct mmp_clk_mix*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct clk_hw*) ; 
 struct clk_hw* FUNC4 (struct clk_hw*,int) ; 
 unsigned long FUNC5 (struct clk_hw*) ; 
 struct mmp_clk_mix* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
				unsigned long best_parent_rate)
{
	struct mmp_clk_mix *mix = FUNC6(hw);
	struct mmp_clk_mix_clk_table *item;
	unsigned long parent_rate;
	unsigned int best_divisor;
	struct clk_hw *parent;
	int i;

	best_divisor = best_parent_rate / rate;

	if (mix->table) {
		for (i = 0; i < mix->table_size; i++) {
			item = &mix->table[i];
			if (item->valid == 0)
				continue;
			parent = FUNC4(hw,
							item->parent_index);
			parent_rate = FUNC5(parent);
			if (parent_rate == best_parent_rate
				&& item->divisor == best_divisor)
				break;
		}
		if (i < mix->table_size)
			return FUNC2(mix,
					FUNC1(mix, item->parent_index),
					FUNC0(mix, item->divisor),
					1, 1);
		else
			return -EINVAL;
	} else {
		for (i = 0; i < FUNC3(hw); i++) {
			parent = FUNC4(hw, i);
			parent_rate = FUNC5(parent);
			if (parent_rate == best_parent_rate)
				break;
		}
		if (i < FUNC3(hw))
			return FUNC2(mix, FUNC1(mix, i),
					FUNC0(mix, best_divisor), 1, 1);
		else
			return -EINVAL;
	}
}