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
struct mtk_clk_cpumux {unsigned int shift; unsigned int mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct mtk_clk_cpumux* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct mtk_clk_cpumux *mux = FUNC1(hw);
	unsigned int val;

	FUNC0(mux->regmap, mux->reg, &val);

	val >>= mux->shift;
	val &= mux->mask;

	return val;
}