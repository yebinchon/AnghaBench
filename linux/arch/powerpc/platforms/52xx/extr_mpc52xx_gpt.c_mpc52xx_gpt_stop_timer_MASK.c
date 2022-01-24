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
struct mpc52xx_gpt_priv {int wdt_mode; int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int MPC52xx_GPT_IS_WDT ; 
 int /*<<< orphan*/  MPC52xx_GPT_MODE_COUNTER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct mpc52xx_gpt_priv *gpt)
{
	unsigned long flags;

	/* reject the operation if the timer is used as watchdog (gpt 0 only) */
	FUNC1(&gpt->lock, flags);
	if ((gpt->wdt_mode & MPC52xx_GPT_IS_WDT) != 0) {
		FUNC2(&gpt->lock, flags);
		return -EBUSY;
	}

	FUNC0(&gpt->regs->mode, MPC52xx_GPT_MODE_COUNTER_ENABLE);
	FUNC2(&gpt->lock, flags);
	return 0;
}