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
struct pic32_sys_clk {TYPE_1__* core; int /*<<< orphan*/  slew_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_TIMEOUT_US ; 
 int SLEW_BUSY ; 
 int SLEW_SYSDIV ; 
 int SLEW_SYSDIV_SHIFT ; 
 struct pic32_sys_clk* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
			 unsigned long rate, unsigned long parent_rate)
{
	struct pic32_sys_clk *sclk = FUNC0(hw);
	unsigned long flags;
	u32 v, div;
	int err;

	div = parent_rate / rate;

	FUNC4(&sclk->core->reg_lock, flags);

	/* apply new div */
	v = FUNC2(sclk->slew_reg);
	v &= ~(SLEW_SYSDIV << SLEW_SYSDIV_SHIFT);
	v |= (div - 1) << SLEW_SYSDIV_SHIFT;

	FUNC1();

	FUNC6(v, sclk->slew_reg);

	/* wait until BUSY is cleared */
	err = FUNC3(sclk->slew_reg, v,
					!(v & SLEW_BUSY), 1, LOCK_TIMEOUT_US);

	FUNC5(&sclk->core->reg_lock, flags);

	return err;
}