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
typedef  int /*<<< orphan*/  u64 ;
struct meson_sclk_div_data {int /*<<< orphan*/  cached_div; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct meson_sclk_div_data* FUNC1 (struct clk_regmap*) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					  unsigned long prate)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct meson_sclk_div_data *sclk = FUNC1(clk);

	return FUNC0((u64)prate, sclk->cached_div);
}