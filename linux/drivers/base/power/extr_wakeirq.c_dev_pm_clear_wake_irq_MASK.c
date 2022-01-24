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
struct wake_irq {int status; struct wake_irq* name; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct wake_irq* wakeirq; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int WAKE_IRQ_DEDICATED_ALLOCATED ; 
 int WAKE_IRQ_DEDICATED_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wake_irq*) ; 
 int /*<<< orphan*/  FUNC2 (struct wake_irq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct device *dev)
{
	struct wake_irq *wirq = dev->power.wakeirq;
	unsigned long flags;

	if (!wirq)
		return;

	FUNC3(&dev->power.lock, flags);
	FUNC0(dev);
	dev->power.wakeirq = NULL;
	FUNC4(&dev->power.lock, flags);

	if (wirq->status & WAKE_IRQ_DEDICATED_ALLOCATED) {
		FUNC1(wirq->irq, wirq);
		wirq->status &= ~WAKE_IRQ_DEDICATED_MASK;
	}
	FUNC2(wirq->name);
	FUNC2(wirq);
}