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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mmp_clk_mix_reg_info {int /*<<< orphan*/  shift_mux; int /*<<< orphan*/  width_mux; int /*<<< orphan*/  reg_clk_sel; int /*<<< orphan*/  reg_clk_ctrl; } ;
struct mmp_clk_mix {scalar_t__ type; struct mmp_clk_mix_reg_info reg_info; scalar_t__ lock; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMP_CLK_MIX_TYPE_V1 ; 
 scalar_t__ MMP_CLK_MIX_TYPE_V2 ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_mix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 struct mmp_clk_mix* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC6(struct clk_hw *hw)
{
	struct mmp_clk_mix *mix = FUNC5(hw);
	struct mmp_clk_mix_reg_info *ri = &mix->reg_info;
	unsigned long flags = 0;
	u32 mux_div = 0;
	u8 width, shift;
	u32 mux_val;

	if (mix->lock)
		FUNC3(mix->lock, flags);

	if (mix->type == MMP_CLK_MIX_TYPE_V1
		|| mix->type == MMP_CLK_MIX_TYPE_V2)
		mux_div = FUNC2(ri->reg_clk_ctrl);
	else
		mux_div = FUNC2(ri->reg_clk_sel);

	if (mix->lock)
		FUNC4(mix->lock, flags);

	width = mix->reg_info.width_mux;
	shift = mix->reg_info.shift_mux;

	mux_val = FUNC0(mux_div, width, shift);

	return FUNC1(mix, mux_val);
}