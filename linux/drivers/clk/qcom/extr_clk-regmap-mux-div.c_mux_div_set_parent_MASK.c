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
struct clk_regmap_mux_div {int /*<<< orphan*/  div; int /*<<< orphan*/ * parent_map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk_regmap_mux_div*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_regmap_mux_div* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct clk_regmap_mux_div *md = FUNC1(hw);

	return FUNC0(md, md->parent_map[index], md->div);
}