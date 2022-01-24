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
struct clk_hw {int dummy; } ;
struct clk_divider {int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCG_DIV_SHIFT ; 
 int /*<<< orphan*/  PCG_DIV_WIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,unsigned long,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_divider* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
					unsigned long rate,
					unsigned long parent_rate)
{
	struct clk_divider *divider = FUNC5(hw);
	unsigned long flags = 0;
	int prediv_value;
	int div_value;
	int ret;
	u32 val;

	ret = FUNC1(rate, parent_rate,
						&prediv_value, &div_value);
	if (ret)
		return -EINVAL;

	FUNC3(divider->lock, flags);

	val = FUNC2(divider->reg);
	val &= ~((FUNC0(divider->width) << divider->shift) |
			(FUNC0(PCG_DIV_WIDTH) << PCG_DIV_SHIFT));

	val |= (u32)(prediv_value  - 1) << divider->shift;
	val |= (u32)(div_value - 1) << PCG_DIV_SHIFT;
	FUNC6(val, divider->reg);

	FUNC4(divider->lock, flags);

	return ret;
}