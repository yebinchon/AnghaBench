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
typedef  int u64 ;
struct rockchip_pll_rate_table {int fbdiv; scalar_t__ dsmpd; unsigned long frac; int /*<<< orphan*/  postdiv2; int /*<<< orphan*/  postdiv1; int /*<<< orphan*/  refdiv; } ;
struct rockchip_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_clk_pll*,struct rockchip_pll_rate_table*) ; 
 struct rockchip_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						     unsigned long prate)
{
	struct rockchip_clk_pll *pll = FUNC2(hw);
	struct rockchip_pll_rate_table cur;
	u64 rate64 = prate;

	FUNC1(pll, &cur);

	rate64 *= cur.fbdiv;
	FUNC0(rate64, cur.refdiv);

	if (cur.dsmpd == 0) {
		/* fractional mode */
		u64 frac_rate64 = prate * cur.frac;

		FUNC0(frac_rate64, cur.refdiv);
		rate64 += frac_rate64 >> 24;
	}

	FUNC0(rate64, cur.postdiv1);
	FUNC0(rate64, cur.postdiv2);

	return (unsigned long)rate64;
}