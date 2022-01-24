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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDCREG_STATUS ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FD_MOTOR_OFF_MAXTRY ; 
 int HZ ; 
 int /*<<< orphan*/  MotorOffTrys ; 
 scalar_t__ MotorOn ; 
 scalar_t__ SelectedDrive ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  motor_off_timer ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct timer_list *unused)
{
	unsigned char status;

	if (SelectedDrive < 0)
		/* no drive selected, needn't deselect anyone */
		return;

	if (FUNC3())
		goto retry;

	status = FUNC0( FDCREG_STATUS );

	if (!(status & 0x80)) {
		/* motor already turned off by FDC -> deselect drives */
		MotorOn = 0;
		FUNC1();
		return;
	}
	/* not yet off, try again */

  retry:
	/* Test again later; if tested too often, it seems there is no disk
	 * in the drive and the FDC will leave the motor on forever (or,
	 * at least until a disk is inserted). So we'll test only twice
	 * per second from then on...
	 */
	FUNC2(&motor_off_timer,
		  jiffies + (MotorOffTrys++ < FD_MOTOR_OFF_MAXTRY ? HZ/20 : HZ/2));
}