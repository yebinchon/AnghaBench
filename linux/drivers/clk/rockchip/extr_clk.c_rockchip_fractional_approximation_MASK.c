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
struct clk_hw {int dummy; } ;
struct clk_fractional_divider {unsigned long nwidth; int mwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct clk_hw* FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 struct clk_fractional_divider* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw,
		unsigned long rate, unsigned long *parent_rate,
		unsigned long *m, unsigned long *n)
{
	struct clk_fractional_divider *fd = FUNC5(hw);
	unsigned long p_rate, p_parent_rate;
	struct clk_hw *p_parent;
	unsigned long scale;

	p_rate = FUNC2(FUNC1(hw));
	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
		p_parent = FUNC1(FUNC1(hw));
		p_parent_rate = FUNC2(p_parent);
		*parent_rate = p_parent_rate;
	}

	/*
	 * Get rate closer to *parent_rate to guarantee there is no overflow
	 * for m and n. In the result it will be the nearest rate left shifted
	 * by (scale - fd->nwidth) bits.
	 */
	scale = FUNC3(*parent_rate / rate - 1);
	if (scale > fd->nwidth)
		rate <<= scale - fd->nwidth;

	FUNC4(rate, *parent_rate,
			FUNC0(fd->mwidth - 1, 0), FUNC0(fd->nwidth - 1, 0),
			m, n);
}