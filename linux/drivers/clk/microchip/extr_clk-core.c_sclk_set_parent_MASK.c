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
typedef  size_t u8 ;
typedef  int u32 ;
struct pic32_sys_clk {size_t* parent_map; int /*<<< orphan*/  mux_reg; TYPE_1__* core; int /*<<< orphan*/  slew_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  LOCK_TIMEOUT_US ; 
 int OSC_CUR_MASK ; 
 int OSC_CUR_SHIFT ; 
 int OSC_NEW_MASK ; 
 int OSC_NEW_SHIFT ; 
 int OSC_SWEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct pic32_sys_clk* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct clk_hw *hw, u8 index)
{
	struct pic32_sys_clk *sclk = FUNC2(hw);
	unsigned long flags;
	u32 nosc, cosc, v;
	int err;

	FUNC9(&sclk->core->reg_lock, flags);

	/* find new_osc */
	nosc = sclk->parent_map ? sclk->parent_map[index] : index;

	/* set new parent */
	v = FUNC7(sclk->mux_reg);
	v &= ~(OSC_NEW_MASK << OSC_NEW_SHIFT);
	v |= nosc << OSC_NEW_SHIFT;

	FUNC5();

	FUNC11(v, sclk->mux_reg);

	/* initate switch */
	FUNC11(OSC_SWEN, FUNC0(sclk->mux_reg));
	FUNC4();

	/* add nop to flush pipeline (as cpu_clk is in-flux) */
	FUNC3();

	/* wait for SWEN bit to clear */
	err = FUNC8(sclk->slew_reg, v,
					!(v & OSC_SWEN), 1, LOCK_TIMEOUT_US);

	FUNC10(&sclk->core->reg_lock, flags);

	/*
	 * SCLK clock-switching logic might reject a clock switching request
	 * if pre-requisites (like new clk_src not present or unstable) are
	 * not met.
	 * So confirm before claiming success.
	 */
	cosc = (FUNC7(sclk->mux_reg) >> OSC_CUR_SHIFT) & OSC_CUR_MASK;
	if (cosc != nosc) {
		FUNC6("%s: err, failed to set_parent() to %d, current %d\n",
		       FUNC1(hw), nosc, cosc);
		err = -EBUSY;
	}

	return err;
}