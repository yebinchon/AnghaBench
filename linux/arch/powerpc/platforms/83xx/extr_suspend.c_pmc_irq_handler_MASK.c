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
typedef  scalar_t__ u32 ;
typedef  int irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* pmc_regs ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	u32 event = FUNC0(&pmc_regs->event);
	int ret = IRQ_NONE;

	if (FUNC1())
		ret = IRQ_HANDLED;

	if (event) {
		FUNC2(&pmc_regs->event, event);
		ret = IRQ_HANDLED;
	}

	return ret;
}