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
struct clockdomain {int dummy; } ;
struct clk_hw_omap {scalar_t__ clkdm_name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct clockdomain* FUNC1 (scalar_t__) ; 
 struct clk_hw_omap* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clockdomain *FUNC3(struct clk *clk)
{
	struct clockdomain *clkdm = NULL;
	struct clk_hw_omap *hwclk;

	hwclk = FUNC2(FUNC0(clk));
	if (hwclk && hwclk->clkdm_name)
		clkdm = FUNC1(hwclk->clkdm_name);

	return clkdm;
}