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
struct mmp_clk_mix_clk_table {scalar_t__ valid; int parent_index; unsigned long divisor; } ;
struct mmp_clk_mix {int table_size; struct mmp_clk_mix_clk_table* table; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long ULONG_MAX ; 
 unsigned int FUNC0 (struct mmp_clk_mix*,int) ; 
 int FUNC1 (struct mmp_clk_mix*) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int FUNC3 (struct clk_hw*) ; 
 struct clk_hw* FUNC4 (struct clk_hw*,int) ; 
 unsigned long FUNC5 (struct clk_hw*) ; 
 struct mmp_clk_mix* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
				      struct clk_rate_request *req)
{
	struct mmp_clk_mix *mix = FUNC6(hw);
	struct mmp_clk_mix_clk_table *item;
	struct clk_hw *parent, *parent_best;
	unsigned long parent_rate, mix_rate, mix_rate_best, parent_rate_best;
	unsigned long gap, gap_best;
	u32 div_val_max;
	unsigned int div;
	int i, j;


	mix_rate_best = 0;
	parent_rate_best = 0;
	gap_best = ULONG_MAX;
	parent_best = NULL;

	if (mix->table) {
		for (i = 0; i < mix->table_size; i++) {
			item = &mix->table[i];
			if (item->valid == 0)
				continue;
			parent = FUNC4(hw,
							item->parent_index);
			parent_rate = FUNC5(parent);
			mix_rate = parent_rate / item->divisor;
			gap = FUNC2(mix_rate - req->rate);
			if (!parent_best || gap < gap_best) {
				parent_best = parent;
				parent_rate_best = parent_rate;
				mix_rate_best = mix_rate;
				gap_best = gap;
				if (gap_best == 0)
					goto found;
			}
		}
	} else {
		for (i = 0; i < FUNC3(hw); i++) {
			parent = FUNC4(hw, i);
			parent_rate = FUNC5(parent);
			div_val_max = FUNC1(mix);
			for (j = 0; j < div_val_max; j++) {
				div = FUNC0(mix, j);
				mix_rate = parent_rate / div;
				gap = FUNC2(mix_rate - req->rate);
				if (!parent_best || gap < gap_best) {
					parent_best = parent;
					parent_rate_best = parent_rate;
					mix_rate_best = mix_rate;
					gap_best = gap;
					if (gap_best == 0)
						goto found;
				}
			}
		}
	}

found:
	if (!parent_best)
		return -EINVAL;

	req->best_parent_rate = parent_rate_best;
	req->best_parent_hw = parent_best;
	req->rate = mix_rate_best;

	return 0;
}