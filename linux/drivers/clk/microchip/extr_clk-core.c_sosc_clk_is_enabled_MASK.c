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
struct pic32_sec_osc {int enable_mask; int status_mask; int /*<<< orphan*/  status_reg; int /*<<< orphan*/  enable_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct pic32_sec_osc* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct pic32_sec_osc *sosc = FUNC0(hw);
	u32 enabled, ready;

	/* check enabled and ready status */
	enabled = FUNC1(sosc->enable_reg) & sosc->enable_mask;
	ready = FUNC1(sosc->status_reg) & sosc->status_mask;

	return enabled && ready;
}