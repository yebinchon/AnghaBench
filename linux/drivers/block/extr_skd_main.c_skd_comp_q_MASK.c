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
struct skd_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  start_queue; int /*<<< orphan*/  completion_worker; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIT_INT_STATUS_HOST ; 
 int /*<<< orphan*/  FIT_ISH_COMPLETION_POSTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skd_isr_comp_limit ; 
 int FUNC4 (struct skd_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *skd_host_data)
{
	struct skd_device *skdev = skd_host_data;
	unsigned long flags;
	int flush_enqueued = 0;
	int deferred;

	FUNC5(&skdev->lock, flags);
	FUNC2(&skdev->pdev->dev, "MSIX = 0x%x\n",
		FUNC0(skdev, FIT_INT_STATUS_HOST));
	FUNC1(skdev, FIT_ISH_COMPLETION_POSTED, FIT_INT_STATUS_HOST);
	deferred = FUNC4(skdev, skd_isr_comp_limit,
						&flush_enqueued);
	if (flush_enqueued)
		FUNC3(&skdev->start_queue);

	if (deferred)
		FUNC3(&skdev->completion_worker);
	else if (!flush_enqueued)
		FUNC3(&skdev->start_queue);

	FUNC6(&skdev->lock, flags);

	return IRQ_HANDLED;
}