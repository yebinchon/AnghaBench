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
struct clk_hw {int dummy; } ;
struct clk_frac {int width; int shift; int /*<<< orphan*/  busy; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxs_lock ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_frac* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
			     unsigned long parent_rate)
{
	struct clk_frac *frac = FUNC5(hw);
	unsigned long flags;
	u32 div, val;
	u64 tmp;

	if (rate > parent_rate)
		return -EINVAL;

	tmp = rate;
	tmp <<= frac->width;
	FUNC0(tmp, parent_rate);
	div = tmp;

	if (!div)
		return -EINVAL;

	FUNC3(&mxs_lock, flags);

	val = FUNC2(frac->reg);
	val &= ~(((1 << frac->width) - 1) << frac->shift);
	val |= div << frac->shift;
	FUNC6(val, frac->reg);

	FUNC4(&mxs_lock, flags);

	return FUNC1(frac->reg, frac->busy);
}