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
typedef  int /*<<< orphan*/  u32 ;
struct davinci_lpsc_clk {int /*<<< orphan*/  md; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct davinci_lpsc_clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDCTL_LRESET ; 
 struct clk_hw* FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct davinci_lpsc_clk* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk *clk, bool reset)
{
	struct clk_hw *hw = FUNC2(clk);
	struct davinci_lpsc_clk *lpsc = FUNC4(hw);
	u32 mdctl;

	if (FUNC0(lpsc))
		return -EINVAL;

	mdctl = reset ? 0 : MDCTL_LRESET;
	FUNC3(lpsc->regmap, FUNC1(lpsc->md), MDCTL_LRESET, mdctl);

	return 0;
}