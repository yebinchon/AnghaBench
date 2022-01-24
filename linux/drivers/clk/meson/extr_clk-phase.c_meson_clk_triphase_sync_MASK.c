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
struct meson_clk_triphase_data {int /*<<< orphan*/  ph2; int /*<<< orphan*/  ph1; int /*<<< orphan*/  ph0; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct meson_clk_triphase_data* FUNC0 (struct clk_regmap*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct meson_clk_triphase_data *tph = FUNC0(clk);
	unsigned int val;

	/* Get phase 0 and sync it to phase 1 and 2 */
	val = FUNC1(clk->map, &tph->ph0);
	FUNC2(clk->map, &tph->ph1, val);
	FUNC2(clk->map, &tph->ph2, val);
}