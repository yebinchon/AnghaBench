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
struct mpc52xx_gpt_priv {int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPC52xx_GPT_MODE_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mpc52xx_gpt_priv* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct mpc52xx_gpt_priv *gpt = FUNC1(d);
	unsigned long flags;

	FUNC2(&gpt->lock, flags);
	FUNC0(&gpt->regs->mode, MPC52xx_GPT_MODE_IRQ_EN);
	FUNC3(&gpt->lock, flags);
}