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
typedef  scalar_t__ u32 ;
struct clk_regmap_mux_div {scalar_t__* parent_map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,int) ; 
 unsigned long FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (unsigned long,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_regmap_mux_div*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,scalar_t__) ; 
 struct clk_regmap_mux_div* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC8(struct clk_hw *hw, unsigned long prate)
{
	struct clk_regmap_mux_div *md = FUNC7(hw);
	u32 div, src;
	int i, num_parents = FUNC1(hw);
	const char *name = FUNC0(hw);

	FUNC5(md, &src, &div);
	for (i = 0; i < num_parents; i++)
		if (src == md->parent_map[i]) {
			struct clk_hw *p = FUNC2(hw, i);
			unsigned long parent_rate = FUNC3(p);

			return FUNC4(parent_rate, 2, div + 1);
		}

	FUNC6("%s: Can't find parent %d\n", name, src);
	return 0;
}