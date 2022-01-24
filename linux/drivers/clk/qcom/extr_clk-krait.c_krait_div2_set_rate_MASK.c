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
typedef  int u32 ;
struct krait_div2_clk {int shift; int /*<<< orphan*/  offset; scalar_t__ lpl; int /*<<< orphan*/  width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LPL_SHIFT ; 
 int /*<<< orphan*/  krait_clock_reg_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct krait_div2_clk* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
			       unsigned long parent_rate)
{
	struct krait_div2_clk *d = FUNC5(hw);
	unsigned long flags;
	u32 val;
	u32 mask = FUNC0(d->width) - 1;

	if (d->lpl)
		mask = mask << (d->shift + LPL_SHIFT) | mask << d->shift;

	FUNC3(&krait_clock_reg_lock, flags);
	val = FUNC1(d->offset);
	val &= ~mask;
	FUNC2(d->offset, val);
	FUNC4(&krait_clock_reg_lock, flags);

	return 0;
}