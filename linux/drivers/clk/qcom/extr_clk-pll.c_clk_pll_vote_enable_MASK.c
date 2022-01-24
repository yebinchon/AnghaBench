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
 int FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct clk_pll* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk_pll*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	int ret;
	struct clk_pll *p = FUNC2(FUNC1(hw));

	ret = FUNC0(hw);
	if (ret)
		return ret;

	return FUNC3(p);
}