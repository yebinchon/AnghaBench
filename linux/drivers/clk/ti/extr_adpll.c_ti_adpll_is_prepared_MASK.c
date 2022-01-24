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
struct ti_adpll_dco_data {int dummy; } ;
struct ti_adpll_data {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ti_adpll_data*) ; 
 struct ti_adpll_data* FUNC1 (struct ti_adpll_dco_data*) ; 
 struct ti_adpll_dco_data* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct ti_adpll_dco_data *dco = FUNC2(hw);
	struct ti_adpll_data *d = FUNC1(dco);

	return FUNC0(d);
}