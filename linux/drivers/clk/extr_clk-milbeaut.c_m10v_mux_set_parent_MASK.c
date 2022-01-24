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
struct clk_mux {int mask; int shift; scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned long) ; 
 struct clk_mux* FUNC8 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw, u8 index)
{
	struct clk_mux *mux = FUNC8(hw);
	u32 val = FUNC3(mux->table, mux->flags, index);
	unsigned long flags = 0;
	u32 reg;
	u32 write_en = FUNC0(FUNC4(mux->mask) - 1);

	if (mux->lock)
		FUNC6(mux->lock, flags);
	else
		FUNC1(mux->lock);

	reg = FUNC5(mux->reg);
	reg &= ~(mux->mask << mux->shift);

	val = (val | write_en) << mux->shift;
	reg |= val;
	FUNC9(reg, mux->reg);

	if (mux->lock)
		FUNC7(mux->lock, flags);
	else
		FUNC2(mux->lock);

	return 0;
}