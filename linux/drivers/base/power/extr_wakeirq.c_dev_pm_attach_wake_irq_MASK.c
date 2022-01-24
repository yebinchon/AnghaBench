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
struct wake_irq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct wake_irq* wakeirq; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device*,struct wake_irq*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct wake_irq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct device *dev, int irq,
				  struct wake_irq *wirq)
{
	unsigned long flags;

	if (!dev || !wirq)
		return -EINVAL;

	FUNC2(&dev->power.lock, flags);
	if (FUNC0(dev, dev->power.wakeirq,
			  "wake irq already initialized\n")) {
		FUNC3(&dev->power.lock, flags);
		return -EEXIST;
	}

	dev->power.wakeirq = wirq;
	FUNC1(dev, wirq);

	FUNC3(&dev->power.lock, flags);
	return 0;
}