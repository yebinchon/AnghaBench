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
typedef  int /*<<< orphan*/  u8 ;
struct ti_adpll_data {int dummy; } ;
struct ti_adpll_clkout_data {struct ti_adpll_data* adpll; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_adpll_data*) ; 
 struct ti_adpll_clkout_data* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct ti_adpll_clkout_data *co = FUNC1(hw);
	struct ti_adpll_data *d = co->adpll;

	return FUNC0(d);
}