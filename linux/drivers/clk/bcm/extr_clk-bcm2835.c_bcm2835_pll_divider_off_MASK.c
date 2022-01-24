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
struct bcm2835_pll_divider_data {int load_mask; int hold_mask; int /*<<< orphan*/  a2w_reg; int /*<<< orphan*/  cm_reg; } ;
struct bcm2835_pll_divider {struct bcm2835_pll_divider_data* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int /*<<< orphan*/  regs_lock; } ;

/* Variables and functions */
 int A2W_PLL_CHANNEL_DISABLE ; 
 struct bcm2835_pll_divider* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct bcm2835_cprman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct bcm2835_pll_divider *divider = FUNC0(hw);
	struct bcm2835_cprman *cprman = divider->cprman;
	const struct bcm2835_pll_divider_data *data = divider->data;

	FUNC3(&cprman->regs_lock);
	FUNC2(cprman, data->cm_reg,
		     (FUNC1(cprman, data->cm_reg) &
		      ~data->load_mask) | data->hold_mask);
	FUNC2(cprman, data->a2w_reg,
		     FUNC1(cprman, data->a2w_reg) |
		     A2W_PLL_CHANNEL_DISABLE);
	FUNC4(&cprman->regs_lock);
}