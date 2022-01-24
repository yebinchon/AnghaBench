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
typedef  int u64 ;
struct mpc52xx_gpt_priv {scalar_t__ ipb_freq; int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

u64 FUNC4(struct mpc52xx_gpt_priv *gpt)
{
	u64 period;
	u64 prescale;
	unsigned long flags;

	FUNC2(&gpt->lock, flags);
	period = FUNC1(&gpt->regs->count);
	FUNC3(&gpt->lock, flags);

	prescale = period >> 16;
	period &= 0xffff;
	if (prescale == 0)
		prescale = 0x10000;
	period = period * prescale * 1000000000ULL;
	FUNC0(period, (u64)gpt->ipb_freq);
	return period;
}