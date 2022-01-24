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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct clk_regmap_mux_div {size_t* parent_map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct clk_hw*) ; 
 size_t FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_regmap_mux_div*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 struct clk_regmap_mux_div* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC5(struct clk_hw *hw)
{
	struct clk_regmap_mux_div *md = FUNC4(hw);
	const char *name = FUNC0(hw);
	u32 i, div, src = 0;

	FUNC2(md, &src, &div);

	for (i = 0; i < FUNC1(hw); i++)
		if (src == md->parent_map[i])
			return i;

	FUNC3("%s: Can't find parent with src %d\n", name, src);
	return 0;
}