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
struct meson_clk_cpu_dyndiv_data {TYPE_1__ div; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct meson_clk_cpu_dyndiv_data* FUNC1 (struct clk_regmap*) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw,
					    unsigned long rate,
					    unsigned long *prate)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct meson_clk_cpu_dyndiv_data *data = FUNC1(clk);

	return FUNC0(hw, rate, prate, NULL, data->div.width, 0);
}