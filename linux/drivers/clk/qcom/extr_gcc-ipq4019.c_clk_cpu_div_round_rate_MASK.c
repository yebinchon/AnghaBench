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
struct freq_tbl {long freq; int /*<<< orphan*/  src; } ;
struct clk_hw {int dummy; } ;
struct clk_fepll {int /*<<< orphan*/  freq_tbl; } ;

/* Variables and functions */
 long EINVAL ; 
 struct clk_hw* FUNC0 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_hw*) ; 
 struct freq_tbl* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_fepll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw, unsigned long rate,
				   unsigned long *p_rate)
{
	struct clk_fepll *pll = FUNC3(hw);
	struct clk_hw *p_hw;
	const struct freq_tbl *f;

	f = FUNC2(pll->freq_tbl, rate);
	if (!f)
		return -EINVAL;

	p_hw = FUNC0(hw, f->src);
	*p_rate = FUNC1(p_hw);

	return f->freq;
}