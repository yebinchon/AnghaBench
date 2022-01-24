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
struct krait_mux_clk {int mask; int shift; int /*<<< orphan*/  offset; scalar_t__ lpl; } ;

/* Variables and functions */
 int LPL_SHIFT ; 
 int /*<<< orphan*/  krait_clock_reg_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct krait_mux_clk *mux, int sel)
{
	unsigned long flags;
	u32 regval;

	FUNC3(&krait_clock_reg_lock, flags);
	regval = FUNC0(mux->offset);
	regval &= ~(mux->mask << mux->shift);
	regval |= (sel & mux->mask) << mux->shift;
	if (mux->lpl) {
		regval &= ~(mux->mask << (mux->shift + LPL_SHIFT));
		regval |= (sel & mux->mask) << (mux->shift + LPL_SHIFT);
	}
	FUNC1(mux->offset, regval);
	FUNC4(&krait_clock_reg_lock, flags);

	/* Wait for switch to complete. */
	FUNC2();
	FUNC5(1);
}