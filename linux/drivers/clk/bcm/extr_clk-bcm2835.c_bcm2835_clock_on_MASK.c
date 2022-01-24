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
struct bcm2835_cprman {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs_lock; } ;
struct bcm2835_clock_data {scalar_t__ tcnt_mux; int /*<<< orphan*/  name; int /*<<< orphan*/  ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;

/* Variables and functions */
 int CM_ENABLE ; 
 int CM_GATE ; 
 struct bcm2835_clock* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_cprman*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct bcm2835_cprman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct bcm2835_clock *clock = FUNC0(hw);
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;

	FUNC6(&cprman->regs_lock);
	FUNC4(cprman, data->ctl_reg,
		     FUNC3(cprman, data->ctl_reg) |
		     CM_ENABLE |
		     CM_GATE);
	FUNC7(&cprman->regs_lock);

	/* Debug code to measure the clock once it's turned on to see
	 * if it's ticking at the rate we expect.
	 */
	if (data->tcnt_mux && false) {
		FUNC5(cprman->dev,
			 "clk %s: rate %ld, measure %ld\n",
			 data->name,
			 FUNC2(hw),
			 FUNC1(cprman, data->tcnt_mux));
	}

	return 0;
}