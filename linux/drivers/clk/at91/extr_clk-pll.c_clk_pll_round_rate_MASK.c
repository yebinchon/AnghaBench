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
struct clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct clk_pll*,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct clk_pll* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
					unsigned long *parent_rate)
{
	struct clk_pll *pll = FUNC1(hw);

	return FUNC0(pll, rate, *parent_rate,
					NULL, NULL, NULL);
}