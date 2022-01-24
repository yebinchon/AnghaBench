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
struct clk_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ CLR ; 
 struct clk_pll* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct clk_pll *pll = FUNC0(hw);

	FUNC1(1 << 31, pll->base + CLR);

	return 0;
}