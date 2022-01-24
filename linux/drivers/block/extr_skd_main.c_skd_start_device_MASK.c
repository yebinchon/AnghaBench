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
struct skd_device {int drive_state; int gendisk_on; int /*<<< orphan*/  lock; TYPE_1__* pdev; int /*<<< orphan*/  waitq; int /*<<< orphan*/  start_queue; void* timer_countdown; int /*<<< orphan*/  state; scalar_t__ last_mtd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIT_CONTROL ; 
 int /*<<< orphan*/  FIT_HW_VERSION ; 
 int /*<<< orphan*/  FIT_INT_DEF_MASK ; 
 int /*<<< orphan*/  FIT_INT_MASK_HOST ; 
 int /*<<< orphan*/  FIT_INT_STATUS_HOST ; 
 int /*<<< orphan*/  FIT_MSG_FROM_DEVICE ; 
#define  FIT_SR_DRIVE_BUSY 136 
#define  FIT_SR_DRIVE_BUSY_ERASE 135 
#define  FIT_SR_DRIVE_BUSY_SANITIZE 134 
#define  FIT_SR_DRIVE_FAULT 133 
#define  FIT_SR_DRIVE_FW_BOOTING 132 
#define  FIT_SR_DRIVE_INIT 131 
#define  FIT_SR_DRIVE_OFFLINE 130 
#define  FIT_SR_DRIVE_ONLINE 129 
#define  FIT_SR_DRIVE_SOFT_RESET 128 
 int FIT_SR_DRIVE_STATE_MASK ; 
 int /*<<< orphan*/  FIT_STATUS ; 
 int /*<<< orphan*/  SKD_DRVR_STATE_BUSY ; 
 int /*<<< orphan*/  SKD_DRVR_STATE_BUSY_ERASE ; 
 int /*<<< orphan*/  SKD_DRVR_STATE_BUSY_SANITIZE ; 
 int /*<<< orphan*/  SKD_DRVR_STATE_STARTING ; 
 int /*<<< orphan*/  SKD_DRVR_STATE_WAIT_BOOT ; 
 int FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 void* SKD_STARTED_BUSY_TIMO ; 
 void* SKD_STARTING_TIMO ; 
 void* SKD_WAIT_BOOT_TIMO ; 
 int /*<<< orphan*/  FUNC1 (struct skd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct skd_device *skdev)
{
	unsigned long flags;
	u32 sense;
	u32 state;

	FUNC10(&skdev->lock, flags);

	/* ack all ghost interrupts */
	FUNC1(skdev, FIT_INT_DEF_MASK, FIT_INT_STATUS_HOST);

	sense = FUNC0(skdev, FIT_STATUS);

	FUNC2(&skdev->pdev->dev, "initial status=0x%x\n", sense);

	state = sense & FIT_SR_DRIVE_STATE_MASK;
	skdev->drive_state = state;
	skdev->last_mtd = 0;

	skdev->state = SKD_DRVR_STATE_STARTING;
	skdev->timer_countdown = SKD_STARTING_TIMO;

	FUNC8(skdev);

	switch (skdev->drive_state) {
	case FIT_SR_DRIVE_OFFLINE:
		FUNC3(&skdev->pdev->dev, "Drive offline...\n");
		break;

	case FIT_SR_DRIVE_FW_BOOTING:
		FUNC2(&skdev->pdev->dev, "FIT_SR_DRIVE_FW_BOOTING\n");
		skdev->state = SKD_DRVR_STATE_WAIT_BOOT;
		skdev->timer_countdown = SKD_WAIT_BOOT_TIMO;
		break;

	case FIT_SR_DRIVE_BUSY_SANITIZE:
		FUNC4(&skdev->pdev->dev, "Start: BUSY_SANITIZE\n");
		skdev->state = SKD_DRVR_STATE_BUSY_SANITIZE;
		skdev->timer_countdown = SKD_STARTED_BUSY_TIMO;
		break;

	case FIT_SR_DRIVE_BUSY_ERASE:
		FUNC4(&skdev->pdev->dev, "Start: BUSY_ERASE\n");
		skdev->state = SKD_DRVR_STATE_BUSY_ERASE;
		skdev->timer_countdown = SKD_STARTED_BUSY_TIMO;
		break;

	case FIT_SR_DRIVE_INIT:
	case FIT_SR_DRIVE_ONLINE:
		FUNC9(skdev);
		break;

	case FIT_SR_DRIVE_BUSY:
		FUNC3(&skdev->pdev->dev, "Drive Busy...\n");
		skdev->state = SKD_DRVR_STATE_BUSY;
		skdev->timer_countdown = SKD_STARTED_BUSY_TIMO;
		break;

	case FIT_SR_DRIVE_SOFT_RESET:
		FUNC3(&skdev->pdev->dev, "drive soft reset in prog\n");
		break;

	case FIT_SR_DRIVE_FAULT:
		/* Fault state is bad...soft reset won't do it...
		 * Hard reset, maybe, but does it work on device?
		 * For now, just fault so the system doesn't hang.
		 */
		FUNC7(skdev);
		/*start the queue so we can respond with error to requests */
		FUNC2(&skdev->pdev->dev, "starting queue\n");
		FUNC5(&skdev->start_queue);
		skdev->gendisk_on = -1;
		FUNC12(&skdev->waitq);
		break;

	case 0xFF:
		/* Most likely the device isn't there or isn't responding
		 * to the BAR1 addresses. */
		FUNC6(skdev);
		/*start the queue so we can respond with error to requests */
		FUNC2(&skdev->pdev->dev,
			"starting queue to error-out reqs\n");
		FUNC5(&skdev->start_queue);
		skdev->gendisk_on = -1;
		FUNC12(&skdev->waitq);
		break;

	default:
		FUNC3(&skdev->pdev->dev, "Start: unknown state %x\n",
			skdev->drive_state);
		break;
	}

	state = FUNC0(skdev, FIT_CONTROL);
	FUNC2(&skdev->pdev->dev, "FIT Control Status=0x%x\n", state);

	state = FUNC0(skdev, FIT_INT_STATUS_HOST);
	FUNC2(&skdev->pdev->dev, "Intr Status=0x%x\n", state);

	state = FUNC0(skdev, FIT_INT_MASK_HOST);
	FUNC2(&skdev->pdev->dev, "Intr Mask=0x%x\n", state);

	state = FUNC0(skdev, FIT_MSG_FROM_DEVICE);
	FUNC2(&skdev->pdev->dev, "Msg from Dev=0x%x\n", state);

	state = FUNC0(skdev, FIT_HW_VERSION);
	FUNC2(&skdev->pdev->dev, "HW version=0x%x\n", state);

	FUNC11(&skdev->lock, flags);
}