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
struct clk_divider_gate {int cached_val; } ;
struct clk_divider {int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_divider* FUNC5 (struct clk_hw*) ; 
 struct clk_divider_gate* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct clk_divider_gate *div_gate = FUNC6(hw);
	struct clk_divider *div = FUNC5(hw);
	unsigned long flags = 0;
	u32 val;

	if (!div_gate->cached_val) {
		FUNC1("%s: no valid preset rate\n", FUNC0(hw));
		return -EINVAL;
	}

	FUNC3(div->lock, flags);
	/* restore div val */
	val = FUNC2(div->reg);
	val |= div_gate->cached_val << div->shift;
	FUNC7(val, div->reg);

	FUNC4(div->lock, flags);

	return 0;
}