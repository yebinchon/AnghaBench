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
typedef  int /*<<< orphan*/  u16 ;
struct clk_syscon {int reset; int /*<<< orphan*/  res_reg; int /*<<< orphan*/  res_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  syscon_resetreg_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct clk_syscon *sclk)
{
	unsigned long iflags;
	u16 val;

	/* Not all blocks support resetting */
	if (!sclk->res_reg)
		return;
	FUNC2(&syscon_resetreg_lock, iflags);
	val = FUNC1(sclk->res_reg);
	val |= FUNC0(sclk->res_bit);
	FUNC4(val, sclk->res_reg);
	FUNC3(&syscon_resetreg_lock, iflags);
	sclk->reset = true;
}