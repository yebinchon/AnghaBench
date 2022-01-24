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
typedef  int u32 ;
struct skd_device {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  start_queue; int /*<<< orphan*/  completion_worker; TYPE_1__* pdev; } ;
typedef  int irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FIT_INT_DEF_MASK ; 
 int /*<<< orphan*/  FIT_INT_STATUS_HOST ; 
 int FIT_ISH_COMPLETION_POSTED ; 
 int FIT_ISH_FW_STATE_CHANGE ; 
 int FIT_ISH_MSG_FROM_DEV ; 
 int IRQ_HANDLED ; 
 scalar_t__ SKD_DRVR_STATE_DISAPPEARED ; 
 scalar_t__ SKD_DRVR_STATE_FAULT ; 
 scalar_t__ SKD_DRVR_STATE_LOAD ; 
 scalar_t__ SKD_DRVR_STATE_ONLINE ; 
 scalar_t__ SKD_DRVR_STATE_STOPPING ; 
 int FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skd_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skd_isr_comp_limit ; 
 int FUNC5 (struct skd_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC11(int irq, void *ptr)
{
	struct skd_device *skdev = ptr;
	u32 intstat;
	u32 ack;
	int rc = 0;
	int deferred = 0;
	int flush_enqueued = 0;

	FUNC8(&skdev->lock);

	for (;; ) {
		intstat = FUNC0(skdev, FIT_INT_STATUS_HOST);

		ack = FIT_INT_DEF_MASK;
		ack &= intstat;

		FUNC2(&skdev->pdev->dev, "intstat=0x%x ack=0x%x\n", intstat,
			ack);

		/* As long as there is an int pending on device, keep
		 * running loop.  When none, get out, but if we've never
		 * done any processing, call completion handler?
		 */
		if (ack == 0) {
			/* No interrupts on device, but run the completion
			 * processor anyway?
			 */
			if (rc == 0)
				if (FUNC3 (skdev->state
					== SKD_DRVR_STATE_ONLINE))
					deferred = 1;
			break;
		}

		rc = IRQ_HANDLED;

		FUNC1(skdev, ack, FIT_INT_STATUS_HOST);

		if (FUNC3((skdev->state != SKD_DRVR_STATE_LOAD) &&
			   (skdev->state != SKD_DRVR_STATE_STOPPING))) {
			if (intstat & FIT_ISH_COMPLETION_POSTED) {
				/*
				 * If we have already deferred completion
				 * processing, don't bother running it again
				 */
				if (deferred == 0)
					deferred =
						FUNC5(skdev,
						skd_isr_comp_limit, &flush_enqueued);
			}

			if (intstat & FIT_ISH_FW_STATE_CHANGE) {
				FUNC6(skdev);
				if (skdev->state == SKD_DRVR_STATE_FAULT ||
				    skdev->state ==
				    SKD_DRVR_STATE_DISAPPEARED) {
					FUNC9(&skdev->lock);
					return rc;
				}
			}

			if (intstat & FIT_ISH_MSG_FROM_DEV)
				FUNC7(skdev);
		}
	}

	if (FUNC10(flush_enqueued))
		FUNC4(&skdev->start_queue);

	if (deferred)
		FUNC4(&skdev->completion_worker);
	else if (!flush_enqueued)
		FUNC4(&skdev->start_queue);

	FUNC9(&skdev->lock);

	return rc;
}