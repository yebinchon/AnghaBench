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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct clk_mux {int flags; int mask; int shift; scalar_t__ lock; int /*<<< orphan*/  table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_MUX_HIWORD_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk_mux*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_mux*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 struct clk_mux* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, u8 index)
{
	struct clk_mux *mux = FUNC7(hw);
	u32 val = FUNC2(mux->table, mux->flags, index);
	unsigned long flags = 0;
	u32 reg;

	if (mux->lock)
		FUNC5(mux->lock, flags);
	else
		FUNC0(mux->lock);

	if (mux->flags & CLK_MUX_HIWORD_MASK) {
		reg = mux->mask << (mux->shift + 16);
	} else {
		reg = FUNC3(mux);
		reg &= ~(mux->mask << mux->shift);
	}
	val = val << mux->shift;
	reg |= val;
	FUNC4(mux, reg);

	if (mux->lock)
		FUNC6(mux->lock, flags);
	else
		FUNC1(mux->lock);

	return 0;
}