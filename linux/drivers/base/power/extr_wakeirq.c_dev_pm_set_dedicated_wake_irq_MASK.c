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
struct wake_irq {int irq; struct wake_irq* name; int /*<<< orphan*/  status; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_DISABLE_UNLAZY ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  WAKE_IRQ_DEDICATED_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int,struct wake_irq*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct wake_irq*) ; 
 int /*<<< orphan*/  handle_threaded_wake_irq ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct wake_irq* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wake_irq*) ; 
 struct wake_irq* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wake_irq*,struct wake_irq*) ; 

int FUNC8(struct device *dev, int irq)
{
	struct wake_irq *wirq;
	int err;

	if (irq < 0)
		return -EINVAL;

	wirq = FUNC6(sizeof(*wirq), GFP_KERNEL);
	if (!wirq)
		return -ENOMEM;

	wirq->name = FUNC4(GFP_KERNEL, "%s:wakeup", FUNC0(dev));
	if (!wirq->name) {
		err = -ENOMEM;
		goto err_free;
	}

	wirq->dev = dev;
	wirq->irq = irq;
	FUNC3(irq, IRQ_NOAUTOEN);

	/* Prevent deferred spurious wakeirqs with disable_irq_nosync() */
	FUNC3(irq, IRQ_DISABLE_UNLAZY);

	/*
	 * Consumer device may need to power up and restore state
	 * so we use a threaded irq.
	 */
	err = FUNC7(irq, NULL, handle_threaded_wake_irq,
				   IRQF_ONESHOT, wirq->name, wirq);
	if (err)
		goto err_free_name;

	err = FUNC1(dev, irq, wirq);
	if (err)
		goto err_free_irq;

	wirq->status = WAKE_IRQ_DEDICATED_ALLOCATED;

	return err;

err_free_irq:
	FUNC2(irq, wirq);
err_free_name:
	FUNC5(wirq->name);
err_free:
	FUNC5(wirq);

	return err;
}