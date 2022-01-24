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
typedef  int u32 ;
struct xgene_clk_pmd {unsigned long denom; int flags; int mask; int shift; scalar_t__ lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int XGENE_CLK_PMD_SCALE_INVERTED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 struct xgene_clk_pmd* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
				  unsigned long parent_rate)
{
	struct xgene_clk_pmd *fd = FUNC6(hw);
	unsigned long flags = 0;
	u64 scale, ret;
	u32 val;

	/*
	 * Compute the scaler:
	 *
	 * freq = parent_rate * scaler / denom, or
	 * scaler = freq * denom / parent_rate
	 */
	ret = rate * fd->denom;
	scale = FUNC0(ret, (u64)parent_rate);

	/* Check if inverted */
	if (fd->flags & XGENE_CLK_PMD_SCALE_INVERTED)
		scale = fd->denom - scale;
	else
		scale--;

	if (fd->lock)
		FUNC4(fd->lock, flags);
	else
		FUNC1(fd->lock);

	val = FUNC3(fd->reg);
	val &= ~fd->mask;
	val |= (scale << fd->shift);
	FUNC7(val, fd->reg);

	if (fd->lock)
		FUNC5(fd->lock, flags);
	else
		FUNC2(fd->lock);

	return 0;
}