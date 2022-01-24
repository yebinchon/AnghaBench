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
typedef  int u8 ;
typedef  int u32 ;
struct clk_mux {int mask; int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;
struct clk_fixup_mux {int /*<<< orphan*/  (* fixup ) (int*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 struct clk_fixup_mux* FUNC4 (struct clk_hw*) ; 
 struct clk_mux* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, u8 index)
{
	struct clk_fixup_mux *fixup_mux = FUNC4(hw);
	struct clk_mux *mux = FUNC5(hw);
	unsigned long flags = 0;
	u32 val;

	FUNC1(mux->lock, flags);

	val = FUNC0(mux->reg);
	val &= ~(mux->mask << mux->shift);
	val |= index << mux->shift;
	fixup_mux->fixup(&val);
	FUNC6(val, mux->reg);

	FUNC2(mux->lock, flags);

	return 0;
}