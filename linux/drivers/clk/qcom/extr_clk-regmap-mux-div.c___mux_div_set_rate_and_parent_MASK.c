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
struct clk_regmap_mux_div {int* parent_map; int div; int src; int /*<<< orphan*/  hid_width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,unsigned int) ; 
 unsigned long FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (struct clk_hw*,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC6 (unsigned long,int,int) ; 
 int FUNC7 (struct clk_regmap_mux_div*,int,int) ; 
 struct clk_regmap_mux_div* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
					 unsigned long prate, u32 src)
{
	struct clk_regmap_mux_div *md = FUNC8(hw);
	int ret;
	u32 div, max_div, best_src = 0, best_div = 0;
	unsigned int i;
	unsigned long actual_rate, best_rate = 0;

	for (i = 0; i < FUNC1(hw); i++) {
		struct clk_hw *parent = FUNC2(hw, i);
		unsigned long parent_rate = FUNC3(parent);

		max_div = FUNC0(md->hid_width) - 1;
		for (div = 1; div < max_div; div++) {
			parent_rate = FUNC6(rate, div, 2);
			parent_rate = FUNC4(parent, parent_rate);
			actual_rate = FUNC6(parent_rate, 2, div);

			if (FUNC5(rate, best_rate, actual_rate)) {
				best_rate = actual_rate;
				best_src = md->parent_map[i];
				best_div = div - 1;
			}

			if (actual_rate < rate || best_rate <= rate)
				break;
		}
	}

	ret = FUNC7(md, best_src, best_div);
	if (!ret) {
		md->div = best_div;
		md->src = best_src;
	}

	return ret;
}