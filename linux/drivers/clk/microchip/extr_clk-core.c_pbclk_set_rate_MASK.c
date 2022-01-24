#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pic32_periph_clk {int /*<<< orphan*/  ctrl_reg; TYPE_1__* core; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int EBUSY ; 
 int /*<<< orphan*/  LOCK_TIMEOUT_US ; 
 int PB_DIV_MASK ; 
 int PB_DIV_READY ; 
 struct pic32_periph_clk* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (struct pic32_periph_clk*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
			  unsigned long parent_rate)
{
	struct pic32_periph_clk *pb = FUNC1(hw);
	unsigned long flags;
	u32 v, div;
	int err;

	/* check & wait for DIV_READY */
	err = FUNC5(pb->ctrl_reg, v, v & PB_DIV_READY,
				 1, LOCK_TIMEOUT_US);
	if (err)
		return err;

	/* calculate clkdiv and best rate */
	div = FUNC0(parent_rate, rate);

	FUNC6(&pb->core->reg_lock, flags);

	/* apply new div */
	v = FUNC4(pb->ctrl_reg);
	v &= ~PB_DIV_MASK;
	v |= (div - 1);

	FUNC3();

	FUNC8(v, pb->ctrl_reg);

	FUNC7(&pb->core->reg_lock, flags);

	/* wait again for DIV_READY */
	err = FUNC5(pb->ctrl_reg, v, v & PB_DIV_READY,
				 1, LOCK_TIMEOUT_US);
	if (err)
		return err;

	/* confirm that new div is applied correctly */
	return (FUNC2(pb) == div) ? 0 : -EBUSY;
}