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
struct clk_regmap_mux_data {int /*<<< orphan*/  flags; } ;
struct clk_regmap {int dummy; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_regmap_mux_data* FUNC0 (struct clk_regmap*) ; 
 int FUNC1 (struct clk_hw*,struct clk_rate_request*,int /*<<< orphan*/ ) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw,
					 struct clk_rate_request *req)
{
	struct clk_regmap *clk = FUNC2(hw);
	struct clk_regmap_mux_data *mux = FUNC0(clk);

	return FUNC1(hw, req, mux->flags);
}