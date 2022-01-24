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
struct owl_factor {int /*<<< orphan*/  common; struct owl_factor_hw factor_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct owl_factor* FUNC0 (struct clk_hw*) ; 
 long FUNC1 (int /*<<< orphan*/ *,struct owl_factor_hw*,unsigned long,unsigned long*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
			unsigned long *parent_rate)
{
	struct owl_factor *factor = FUNC0(hw);
	struct owl_factor_hw *factor_hw = &factor->factor_hw;

	return FUNC1(&factor->common, factor_hw,
					rate, parent_rate);
}