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
struct clk_frac {scalar_t__ lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int DIV_FACTOR_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct clk_frac* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct clk_frac *frac = FUNC3(hw);
	unsigned long flags = 0;
	unsigned int div = 1, val;

	if (frac->lock)
		FUNC1(frac->lock, flags);

	val = FUNC0(frac->reg);

	if (frac->lock)
		FUNC2(frac->lock, flags);

	div = val & DIV_FACTOR_MASK;

	if (!div)
		return 0;

	parent_rate = parent_rate / 10000;

	parent_rate = (parent_rate << 14) / (2 * div);
	return parent_rate * 10000;
}