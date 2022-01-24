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
struct clk_rpmh {unsigned long aggr_state; unsigned long unit; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_rpmh*,int) ; 
 struct clk_rpmh* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
				 unsigned long parent_rate)
{
	struct clk_rpmh *c = FUNC2(hw);

	c->aggr_state = rate / c->unit;
	/*
	 * Since any non-zero value sent to hw would result in enabling the
	 * clock, only send the value if the clock has already been prepared.
	 */
	if (FUNC0(hw))
		FUNC1(c, true);

	return 0;
}