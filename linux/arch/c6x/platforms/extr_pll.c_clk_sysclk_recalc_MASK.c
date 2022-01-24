#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pll_data {unsigned long input_rate; } ;
struct clk {unsigned long rate; int flags; unsigned long div; int /*<<< orphan*/  name; TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; struct pll_data* pll_data; } ;

/* Variables and functions */
 int FIXED_DIV_PLL ; 
 int PLLDIV_EN ; 
 int PLLDIV_RATIO_MASK ; 
 int PRE_PLL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct pll_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	u32 v, plldiv = 0;
	struct pll_data *pll;
	unsigned long rate = clk->rate;

	if (FUNC0(!clk->parent))
		return rate;

	rate = clk->parent->rate;

	/* the parent must be a PLL */
	if (FUNC0(!clk->parent->pll_data))
		return rate;

	pll = clk->parent->pll_data;

	/* If pre-PLL, source clock is before the multiplier and divider(s) */
	if (clk->flags & PRE_PLL)
		rate = pll->input_rate;

	if (!clk->div) {
		FUNC2("%s: (no divider) rate = %lu KHz\n",
			 clk->name, rate / 1000);
		return rate;
	}

	if (clk->flags & FIXED_DIV_PLL) {
		rate /= clk->div;
		FUNC2("%s: (fixed divide by %d) rate = %lu KHz\n",
			 clk->name, clk->div, rate / 1000);
		return rate;
	}

	v = FUNC1(pll, clk->div);
	if (v & PLLDIV_EN)
		plldiv = (v & PLLDIV_RATIO_MASK) + 1;

	if (plldiv == 0)
		plldiv = 1;

	rate /= plldiv;

	FUNC2("%s: (divide by %d) rate = %lu KHz\n",
		 clk->name, plldiv, rate / 1000);

	return rate;
}