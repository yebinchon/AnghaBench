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
struct pic32_sys_clk {size_t* parent_map; int /*<<< orphan*/  mux_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t OSC_CUR_MASK ; 
 size_t OSC_CUR_SHIFT ; 
 size_t FUNC0 (struct clk_hw*) ; 
 struct pic32_sys_clk* FUNC1 (struct clk_hw*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct pic32_sys_clk *sclk = FUNC1(hw);
	u32 i, v;

	v = (FUNC2(sclk->mux_reg) >> OSC_CUR_SHIFT) & OSC_CUR_MASK;

	if (!sclk->parent_map)
		return v;

	for (i = 0; i < FUNC0(hw); i++)
		if (sclk->parent_map[i] == v)
			return i;
	return -EINVAL;
}