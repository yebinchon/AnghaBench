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
struct clk_sama5d4_h32mx {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int AT91_PMC_H32MXDIV ; 
 int /*<<< orphan*/  AT91_PMC_MCKR ; 
 unsigned long H32MX_MAX_FREQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_sama5d4_h32mx* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						 unsigned long parent_rate)
{
	struct clk_sama5d4_h32mx *h32mxclk = FUNC2(hw);
	unsigned int mckr;

	FUNC1(h32mxclk->regmap, AT91_PMC_MCKR, &mckr);
	if (mckr & AT91_PMC_H32MXDIV)
		return parent_rate / 2;

	if (parent_rate > H32MX_MAX_FREQ)
		FUNC0("H32MX clock is too fast\n");
	return parent_rate;
}