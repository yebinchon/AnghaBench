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
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clk_hw*,unsigned long,unsigned long) ; 
 int FUNC2 (struct clk_hw*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hwclk, unsigned long rate,
			    unsigned long parent_rate)
{
	if (FUNC0(hwclk->clk))
		return FUNC2(hwclk, rate, parent_rate);
	else
		return FUNC1(hwclk, rate, parent_rate);
}