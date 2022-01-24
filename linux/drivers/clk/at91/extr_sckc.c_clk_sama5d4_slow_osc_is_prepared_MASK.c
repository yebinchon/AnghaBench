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
struct clk_sama5d4_slow_osc {int prepared; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_sama5d4_slow_osc* FUNC0 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC1(struct clk_hw *hw)
{
	struct clk_sama5d4_slow_osc *osc = FUNC0(hw);

	return osc->prepared;
}