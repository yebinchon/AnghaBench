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
struct freq_tbl {int dummy; } ;
struct clk_rcg2 {int /*<<< orphan*/  freq_tbl; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clk_rcg2*,struct freq_tbl const*) ; 
 int FUNC2 (struct clk_hw*,struct freq_tbl const*) ; 
 struct freq_tbl* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_rcg2* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
				    unsigned long parent_rate)
{
	struct clk_rcg2 *rcg = FUNC4(hw);
	const struct freq_tbl *f;

	f = FUNC3(rcg->freq_tbl, rate);
	if (!f)
		return -EINVAL;

	/*
	 * In case clock is disabled, update the CFG, M, N and D registers
	 * and don't hit the update bit of CMD register.
	 */
	if (!FUNC0(hw->clk))
		return FUNC1(rcg, f);

	return FUNC2(hw, f);
}