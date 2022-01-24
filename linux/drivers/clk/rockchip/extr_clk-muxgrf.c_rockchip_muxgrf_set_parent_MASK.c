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
typedef  unsigned int u8 ;
struct rockchip_muxgrf_clock {unsigned int shift; int flags; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; scalar_t__ width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_MUX_HIWORD_MASK ; 
 unsigned int FUNC0 (scalar_t__,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct rockchip_muxgrf_clock* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct rockchip_muxgrf_clock *mux = FUNC3(hw);
	unsigned int mask = FUNC0(mux->width + mux->shift - 1, mux->shift);
	unsigned int val;

	val = index;
	val <<= mux->shift;

	if (mux->flags & CLK_MUX_HIWORD_MASK)
		return FUNC2(mux->regmap, mux->reg, val | (mask << 16));
	else
		return FUNC1(mux->regmap, mux->reg, mask, val);
}