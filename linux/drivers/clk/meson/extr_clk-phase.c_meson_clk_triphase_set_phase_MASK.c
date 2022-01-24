#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  width; } ;
struct meson_clk_triphase_data {TYPE_1__ ph2; TYPE_1__ ph1; TYPE_1__ ph0; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct meson_clk_triphase_data* FUNC1 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, int degrees)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct meson_clk_triphase_data *tph = FUNC1(clk);
	unsigned int val;

	val = FUNC0(degrees, tph->ph0.width);
	FUNC2(clk->map, &tph->ph0, val);
	FUNC2(clk->map, &tph->ph1, val);
	FUNC2(clk->map, &tph->ph2, val);

	return 0;
}