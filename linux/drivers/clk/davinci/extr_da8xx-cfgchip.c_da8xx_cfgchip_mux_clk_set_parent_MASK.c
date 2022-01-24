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
typedef  scalar_t__ u8 ;
struct da8xx_cfgchip_mux_clk {unsigned int mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct da8xx_cfgchip_mux_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct da8xx_cfgchip_mux_clk *clk = FUNC1(hw);
	unsigned int val = index ? clk->mask : 0;

	return FUNC0(clk->regmap, clk->reg, clk->mask, val);
}