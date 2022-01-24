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
struct omap_hwmod {scalar_t__ _clk; struct clockdomain* clkdm; } ;
struct clockdomain {int dummy; } ;
struct clk_hw_omap {struct clockdomain* clkdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_hw_omap* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clockdomain *FUNC3(struct omap_hwmod *oh)
{
	struct clk_hw_omap *clk;

	if (oh->clkdm) {
		return oh->clkdm;
	} else if (oh->_clk) {
		if (!FUNC1(FUNC0(oh->_clk)))
			return NULL;
		clk = FUNC2(FUNC0(oh->_clk));
		return clk->clkdm;
	}
	return NULL;
}