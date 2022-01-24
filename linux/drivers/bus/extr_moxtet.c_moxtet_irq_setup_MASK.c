#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int exists; int /*<<< orphan*/  masked; int /*<<< orphan*/  chip; int /*<<< orphan*/ * domain; } ;
struct moxtet {int /*<<< orphan*/  dev_irq; TYPE_1__ irq; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int MOXTET_NIRQS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct moxtet*) ; 
 int /*<<< orphan*/  moxtet_irq_chip ; 
 int /*<<< orphan*/  moxtet_irq_domain ; 
 int /*<<< orphan*/  FUNC4 (struct moxtet*) ; 
 int /*<<< orphan*/  moxtet_irq_thread_fn ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct moxtet*) ; 

__attribute__((used)) static int FUNC6(struct moxtet *moxtet)
{
	int i, ret;

	moxtet->irq.domain = FUNC3(moxtet->dev->of_node,
						   MOXTET_NIRQS, 0,
						   &moxtet_irq_domain, moxtet);
	if (moxtet->irq.domain == NULL) {
		FUNC1(moxtet->dev, "Could not add IRQ domain\n");
		return -ENOMEM;
	}

	for (i = 0; i < MOXTET_NIRQS; ++i)
		if (moxtet->irq.exists & FUNC0(i))
			FUNC2(moxtet->irq.domain, i);

	moxtet->irq.chip = moxtet_irq_chip;
	moxtet->irq.masked = ~0;

	ret = FUNC5(moxtet->dev_irq, NULL, moxtet_irq_thread_fn,
				   IRQF_ONESHOT, "moxtet", moxtet);
	if (ret < 0)
		goto err_free;

	return 0;

err_free:
	FUNC4(moxtet);
	return ret;
}