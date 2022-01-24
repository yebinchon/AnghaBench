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
struct owl_factor_hw {int dummy; } ;
struct owl_clk_common {int dummy; } ;
struct owl_factor {struct owl_clk_common common; struct owl_factor_hw factor_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct owl_factor* FUNC0 (struct clk_hw*) ; 
 unsigned long FUNC1 (struct owl_clk_common*,struct owl_factor_hw*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
			unsigned long parent_rate)
{
	struct owl_factor *factor = FUNC0(hw);
	struct owl_factor_hw *factor_hw = &factor->factor_hw;
	struct owl_clk_common *common = &factor->common;

	return FUNC1(common, factor_hw, parent_rate);
}