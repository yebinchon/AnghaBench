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
typedef  unsigned long u32 ;
struct clk_hw {int dummy; } ;
struct clk_fractional_divider {int flags; unsigned long mmask; unsigned long nmask; unsigned long mshift; unsigned long nshift; scalar_t__ lock; scalar_t__ nwidth; scalar_t__ mwidth; } ;

/* Variables and functions */
 int CLK_FRAC_DIVIDER_ZERO_BASED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (struct clk_fractional_divider*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_fractional_divider*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned long) ; 
 struct clk_fractional_divider* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
			   unsigned long parent_rate)
{
	struct clk_fractional_divider *fd = FUNC8(hw);
	unsigned long flags = 0;
	unsigned long m, n;
	u32 val;

	FUNC5(rate, parent_rate,
			FUNC0(fd->mwidth - 1, 0), FUNC0(fd->nwidth - 1, 0),
			&m, &n);

	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
		m--;
		n--;
	}

	if (fd->lock)
		FUNC6(fd->lock, flags);
	else
		FUNC1(fd->lock);

	val = FUNC3(fd);
	val &= ~(fd->mmask | fd->nmask);
	val |= (m << fd->mshift) | (n << fd->nshift);
	FUNC4(fd, val);

	if (fd->lock)
		FUNC7(fd->lock, flags);
	else
		FUNC2(fd->lock);

	return 0;
}