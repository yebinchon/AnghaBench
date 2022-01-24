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
typedef  int /*<<< orphan*/  u32 ;
struct clk {scalar_t__ enable_reg; int /*<<< orphan*/  enable_mask; } ;

/* Variables and functions */
 scalar_t__ mcs814x_sysdbg_base ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, int enable)
{
	u32 tmp;

	/* no enable_reg means the clock is always enabled */
	if (!clk->enable_reg)
		return 0;

	tmp = FUNC0(mcs814x_sysdbg_base + clk->enable_reg);
	if (!enable)
		tmp &= ~clk->enable_mask;
	else
		tmp |= clk->enable_mask;

	FUNC1(tmp, mcs814x_sysdbg_base + clk->enable_reg);

	return 0;
}