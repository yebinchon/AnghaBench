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
struct bcm2835_cprman {int /*<<< orphan*/  regs_lock; } ;
struct bcm2835_clock_data {int /*<<< orphan*/  ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;

/* Variables and functions */
 int CM_ENABLE ; 
 struct bcm2835_clock* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_clock*) ; 
 int FUNC2 (struct bcm2835_cprman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct bcm2835_clock *clock = FUNC0(hw);
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;

	FUNC4(&cprman->regs_lock);
	FUNC3(cprman, data->ctl_reg,
		     FUNC2(cprman, data->ctl_reg) & ~CM_ENABLE);
	FUNC5(&cprman->regs_lock);

	/* BUSY will remain high until the divider completes its cycle. */
	FUNC1(clock);
}