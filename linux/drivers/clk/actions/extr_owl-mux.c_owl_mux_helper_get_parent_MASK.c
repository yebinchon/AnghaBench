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
struct owl_mux_hw {int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  reg; } ;
struct owl_clk_common {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

u8 FUNC2(const struct owl_clk_common *common,
			     const struct owl_mux_hw *mux_hw)
{
	u32 reg;
	u8 parent;

	FUNC1(common->regmap, mux_hw->reg, &reg);
	parent = reg >> mux_hw->shift;
	parent &= FUNC0(mux_hw->width) - 1;

	return parent;
}