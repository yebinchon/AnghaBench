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
typedef  unsigned long u64 ;
typedef  unsigned long u32 ;
struct clk_hw {int dummy; } ;
struct clk_fractional_divider {unsigned long mmask; unsigned long mshift; unsigned long nmask; unsigned long nshift; int flags; scalar_t__ lock; } ;

/* Variables and functions */
 int CLK_FRAC_DIVIDER_ZERO_BASED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (struct clk_fractional_divider*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 struct clk_fractional_divider* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC7(struct clk_hw *hw,
					unsigned long parent_rate)
{
	struct clk_fractional_divider *fd = FUNC6(hw);
	unsigned long flags = 0;
	unsigned long m, n;
	u32 val;
	u64 ret;

	if (fd->lock)
		FUNC4(fd->lock, flags);
	else
		FUNC0(fd->lock);

	val = FUNC2(fd);

	if (fd->lock)
		FUNC5(fd->lock, flags);
	else
		FUNC1(fd->lock);

	m = (val & fd->mmask) >> fd->mshift;
	n = (val & fd->nmask) >> fd->nshift;

	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
		m++;
		n++;
	}

	if (!n || !m)
		return parent_rate;

	ret = (u64)parent_rate * m;
	FUNC3(ret, n);

	return ret;
}