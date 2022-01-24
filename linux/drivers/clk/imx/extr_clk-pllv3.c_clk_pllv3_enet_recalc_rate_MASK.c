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
struct clk_pllv3 {unsigned long ref_clock; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_pllv3* FUNC0 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC1(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct clk_pllv3 *pll = FUNC0(hw);

	return pll->ref_clock;
}