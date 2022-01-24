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
struct skd_device {int state; scalar_t__ drive_state; int gendisk_on; TYPE_1__* pdev; int /*<<< orphan*/  waitq; int /*<<< orphan*/  start_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FIT_SR_DRIVE_ONLINE ; 
#define  SKD_DRVR_STATE_BUSY 137 
#define  SKD_DRVR_STATE_BUSY_ERASE 136 
#define  SKD_DRVR_STATE_BUSY_IMMINENT 135 
#define  SKD_DRVR_STATE_DISAPPEARED 134 
#define  SKD_DRVR_STATE_FAULT 133 
#define  SKD_DRVR_STATE_IDLE 132 
#define  SKD_DRVR_STATE_LOAD 131 
 int SKD_DRVR_STATE_ONLINE ; 
#define  SKD_DRVR_STATE_PAUSED 130 
#define  SKD_DRVR_STATE_RESTARTING 129 
#define  SKD_DRVR_STATE_STARTING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct skd_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct skd_device *skdev)
{
	int prev_driver_state = skdev->state;

	FUNC4(skdev, "unquiesce");
	if (skdev->state == SKD_DRVR_STATE_ONLINE) {
		FUNC0(&skdev->pdev->dev, "**** device already ONLINE\n");
		return 0;
	}
	if (skdev->drive_state != FIT_SR_DRIVE_ONLINE) {
		/*
		 * If there has been an state change to other than
		 * ONLINE, we will rely on controller state change
		 * to come back online and restart the queue.
		 * The BUSY state means that driver is ready to
		 * continue normal processing but waiting for controller
		 * to become available.
		 */
		skdev->state = SKD_DRVR_STATE_BUSY;
		FUNC0(&skdev->pdev->dev, "drive BUSY state\n");
		return 0;
	}

	/*
	 * Drive has just come online, driver is either in startup,
	 * paused performing a task, or bust waiting for hardware.
	 */
	switch (skdev->state) {
	case SKD_DRVR_STATE_PAUSED:
	case SKD_DRVR_STATE_BUSY:
	case SKD_DRVR_STATE_BUSY_IMMINENT:
	case SKD_DRVR_STATE_BUSY_ERASE:
	case SKD_DRVR_STATE_STARTING:
	case SKD_DRVR_STATE_RESTARTING:
	case SKD_DRVR_STATE_FAULT:
	case SKD_DRVR_STATE_IDLE:
	case SKD_DRVR_STATE_LOAD:
		skdev->state = SKD_DRVR_STATE_ONLINE;
		FUNC1(&skdev->pdev->dev, "Driver state %s(%d)=>%s(%d)\n",
			FUNC5(prev_driver_state),
			prev_driver_state, FUNC5(skdev->state),
			skdev->state);
		FUNC0(&skdev->pdev->dev,
			"**** device ONLINE...starting block queue\n");
		FUNC0(&skdev->pdev->dev, "starting queue\n");
		FUNC2(&skdev->pdev->dev, "STEC s1120 ONLINE\n");
		FUNC3(&skdev->start_queue);
		skdev->gendisk_on = 1;
		FUNC6(&skdev->waitq);
		break;

	case SKD_DRVR_STATE_DISAPPEARED:
	default:
		FUNC0(&skdev->pdev->dev,
			"**** driver state %d, not implemented\n",
			skdev->state);
		return -EBUSY;
	}
	return 0;
}