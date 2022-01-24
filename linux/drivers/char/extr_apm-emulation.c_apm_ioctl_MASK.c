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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
struct file {struct apm_user* private_data; } ;
struct apm_user {int suspend_result; int /*<<< orphan*/  suspend_state; int /*<<< orphan*/  writer; int /*<<< orphan*/  suser; } ;

/* Variables and functions */
#define  APM_IOC_SUSPEND 130 
 int EINTR ; 
 int EINVAL ; 
 long EPERM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PM_SUSPEND_MEM ; 
 int /*<<< orphan*/  SUSPEND_ACKED ; 
#define  SUSPEND_ACKTO 129 
 int /*<<< orphan*/  SUSPEND_NONE ; 
#define  SUSPEND_READ 128 
 int /*<<< orphan*/  SUSPEND_WAIT ; 
 int /*<<< orphan*/  apm_suspend_waitqueue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  state_lock ; 
 int /*<<< orphan*/  suspend_acks_pending ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC7(struct file *filp, u_int cmd, u_long arg)
{
	struct apm_user *as = filp->private_data;
	int err = -EINVAL;

	if (!as->suser || !as->writer)
		return -EPERM;

	switch (cmd) {
	case APM_IOC_SUSPEND:
		FUNC2(&state_lock);

		as->suspend_result = -EINTR;

		switch (as->suspend_state) {
		case SUSPEND_READ:
			/*
			 * If we read a suspend command from /dev/apm_bios,
			 * then the corresponding APM_IOC_SUSPEND ioctl is
			 * interpreted as an acknowledge.
			 */
			as->suspend_state = SUSPEND_ACKED;
			FUNC0(&suspend_acks_pending);
			FUNC3(&state_lock);

			/*
			 * suspend_acks_pending changed, the notifier needs to
			 * be woken up for this
			 */
			FUNC6(&apm_suspend_waitqueue);

			/*
			 * Wait for the suspend/resume to complete.  If there
			 * are pending acknowledges, we wait here for them.
			 * wait_event_freezable() is interruptible and pending
			 * signal can cause busy looping.  We aren't doing
			 * anything critical, chill a bit on each iteration.
			 */
			while (FUNC5(apm_suspend_waitqueue,
					as->suspend_state != SUSPEND_ACKED))
				FUNC1(10);
			break;
		case SUSPEND_ACKTO:
			as->suspend_result = -ETIMEDOUT;
			FUNC3(&state_lock);
			break;
		default:
			as->suspend_state = SUSPEND_WAIT;
			FUNC3(&state_lock);

			/*
			 * Otherwise it is a request to suspend the system.
			 * Just invoke pm_suspend(), we'll handle it from
			 * there via the notifier.
			 */
			as->suspend_result = FUNC4(PM_SUSPEND_MEM);
		}

		FUNC2(&state_lock);
		err = as->suspend_result;
		as->suspend_state = SUSPEND_NONE;
		FUNC3(&state_lock);
		break;
	}

	return err;
}