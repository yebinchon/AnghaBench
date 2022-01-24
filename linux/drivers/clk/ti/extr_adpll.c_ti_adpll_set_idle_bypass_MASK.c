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
struct ti_adpll_data {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPLL_CLKCTRL_IDLE ; 
 scalar_t__ ADPLL_CLKCTRL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ti_adpll_data *d)
{
	unsigned long flags;
	u32 v;

	FUNC2(&d->lock, flags);
	v = FUNC1(d->regs + ADPLL_CLKCTRL_OFFSET);
	v |= FUNC0(ADPLL_CLKCTRL_IDLE);
	FUNC4(v, d->regs + ADPLL_CLKCTRL_OFFSET);
	FUNC3(&d->lock, flags);
}