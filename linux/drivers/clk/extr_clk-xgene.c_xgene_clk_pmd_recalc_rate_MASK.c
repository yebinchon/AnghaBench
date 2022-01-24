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
struct xgene_clk_pmd {unsigned long mask; unsigned long shift; int flags; unsigned long denom; scalar_t__ lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int XGENE_CLK_PMD_SCALE_INVERTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 struct xgene_clk_pmd* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC7(struct clk_hw *hw,
					       unsigned long parent_rate)
{
	struct xgene_clk_pmd *fd = FUNC6(hw);
	unsigned long flags = 0;
	u64 ret, scale;
	u32 val;

	if (fd->lock)
		FUNC4(fd->lock, flags);
	else
		FUNC0(fd->lock);

	val = FUNC3(fd->reg);

	if (fd->lock)
		FUNC5(fd->lock, flags);
	else
		FUNC1(fd->lock);

	ret = (u64)parent_rate;

	scale = (val & fd->mask) >> fd->shift;
	if (fd->flags & XGENE_CLK_PMD_SCALE_INVERTED)
		scale = fd->denom - scale;
	else
		scale++;

	/* freq = parent_rate * scaler / denom */
	FUNC2(ret, fd->denom);
	ret *= scale;
	if (ret == 0)
		ret = (u64)parent_rate;

	return ret;
}