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
struct rockchip_muxgrf_clock {unsigned int shift; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; scalar_t__ width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct rockchip_muxgrf_clock* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct rockchip_muxgrf_clock *mux = FUNC2(hw);
	unsigned int mask = FUNC0(mux->width - 1, 0);
	unsigned int val;

	FUNC1(mux->regmap, mux->reg, &val);

	val >>= mux->shift;
	val &= mask;

	return val;
}