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
typedef  scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct skd_device {scalar_t__ state; scalar_t__ drive_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ FIT_SR_DRIVE_STATE_MASK ; 
 int /*<<< orphan*/  FIT_STATUS ; 
 scalar_t__ HZ ; 
 scalar_t__ SKD_DRVR_STATE_FAULT ; 
 scalar_t__ SKD_DRVR_STATE_ONLINE ; 
 scalar_t__ FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 struct skd_device* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct skd_device*) ; 
 struct skd_device* skdev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct skd_device *skdev = FUNC1(skdev, t, timer);
	unsigned long reqflags;
	u32 state;

	if (skdev->state == SKD_DRVR_STATE_FAULT)
		/* The driver has declared fault, and we want it to
		 * stay that way until driver is reloaded.
		 */
		return;

	FUNC5(&skdev->lock, reqflags);

	state = FUNC0(skdev, FIT_STATUS);
	state &= FIT_SR_DRIVE_STATE_MASK;
	if (state != skdev->drive_state)
		FUNC3(skdev);

	if (skdev->state != SKD_DRVR_STATE_ONLINE)
		FUNC4(skdev);

	FUNC2(&skdev->timer, (jiffies + HZ));

	FUNC6(&skdev->lock, reqflags);
}