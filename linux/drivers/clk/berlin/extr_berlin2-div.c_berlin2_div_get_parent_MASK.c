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
struct clk_hw {int dummy; } ;
struct berlin2_div_map {int pll_select_shift; scalar_t__ pll_select_offs; int /*<<< orphan*/  pll_switch_shift; scalar_t__ pll_switch_offs; } ;
struct berlin2_div {scalar_t__ lock; scalar_t__ base; struct berlin2_div_map map; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PLL_SELECT_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct berlin2_div* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC5(struct clk_hw *hw)
{
	struct berlin2_div *div = FUNC4(hw);
	struct berlin2_div_map *map = &div->map;
	u32 reg;
	u8 index = 0;

	if (div->lock)
		FUNC2(div->lock);

	/* PLL_SWITCH == 0 is index 0 */
	reg = FUNC1(div->base + map->pll_switch_offs);
	reg &= FUNC0(map->pll_switch_shift);
	if (reg) {
		reg = FUNC1(div->base + map->pll_select_offs);
		reg >>= map->pll_select_shift;
		reg &= PLL_SELECT_MASK;
		index = 1 + reg;
	}

	if (div->lock)
		FUNC3(div->lock);

	return index;
}