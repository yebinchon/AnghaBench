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
struct bcm2835_cprman {int /*<<< orphan*/  regs_lock; } ;
struct bcm2835_clock_data {int /*<<< orphan*/  div_reg; int /*<<< orphan*/  ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;

/* Variables and functions */
 int CM_DIV_FRAC_MASK ; 
 int CM_FRAC ; 
 int FUNC0 (struct clk_hw*,unsigned long,unsigned long,int) ; 
 struct bcm2835_clock* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (struct bcm2835_cprman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw,
				  unsigned long rate, unsigned long parent_rate)
{
	struct bcm2835_clock *clock = FUNC1(hw);
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;
	u32 div = FUNC0(hw, rate, parent_rate, false);
	u32 ctl;

	FUNC4(&cprman->regs_lock);

	/*
	 * Setting up frac support
	 *
	 * In principle it is recommended to stop/start the clock first,
	 * but as we set CLK_SET_RATE_GATE during registration of the
	 * clock this requirement should be take care of by the
	 * clk-framework.
	 */
	ctl = FUNC2(cprman, data->ctl_reg) & ~CM_FRAC;
	ctl |= (div & CM_DIV_FRAC_MASK) ? CM_FRAC : 0;
	FUNC3(cprman, data->ctl_reg, ctl);

	FUNC3(cprman, data->div_reg, div);

	FUNC5(&cprman->regs_lock);

	return 0;
}