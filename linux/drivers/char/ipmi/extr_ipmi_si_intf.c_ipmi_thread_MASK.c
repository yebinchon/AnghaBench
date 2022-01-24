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
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct smi_info {int /*<<< orphan*/  need_watch; scalar_t__ in_maintenance_mode; int /*<<< orphan*/  si_lock; int /*<<< orphan*/  timer_running; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NICE ; 
 int SI_SM_CALL_WITHOUT_DELAY ; 
 int SI_SM_CALL_WITH_DELAY ; 
 int SI_SM_IDLE ; 
 scalar_t__ SI_TIMEOUT_JIFFIES ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int FUNC3 (int,struct smi_info*,struct timespec*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smi_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(void *data)
{
	struct smi_info *smi_info = data;
	unsigned long flags;
	enum si_sm_result smi_result;
	struct timespec busy_until = { 0, 0 };

	FUNC2(&busy_until);
	FUNC7(current, MAX_NICE);
	while (!FUNC4()) {
		int busy_wait;

		FUNC10(&(smi_info->si_lock), flags);
		smi_result = FUNC8(smi_info, 0);

		/*
		 * If the driver is doing something, there is a possible
		 * race with the timer.  If the timer handler see idle,
		 * and the thread here sees something else, the timer
		 * handler won't restart the timer even though it is
		 * required.  So start it here if necessary.
		 */
		if (smi_result != SI_SM_IDLE && !smi_info->timer_running)
			FUNC9(smi_info, jiffies + SI_TIMEOUT_JIFFIES);

		FUNC11(&(smi_info->si_lock), flags);
		busy_wait = FUNC3(smi_result, smi_info,
						  &busy_until);
		if (smi_result == SI_SM_CALL_WITHOUT_DELAY) {
			; /* do nothing */
		} else if (smi_result == SI_SM_CALL_WITH_DELAY && busy_wait) {
			/*
			 * In maintenance mode we run as fast as
			 * possible to allow firmware updates to
			 * complete as fast as possible, but normally
			 * don't bang on the scheduler.
			 */
			if (smi_info->in_maintenance_mode)
				FUNC5();
			else
				FUNC12(100, 200);
		} else if (smi_result == SI_SM_IDLE) {
			if (FUNC1(&smi_info->need_watch)) {
				FUNC6(100);
			} else {
				/* Wait to be woken up when we are needed. */
				FUNC0(TASK_INTERRUPTIBLE);
				FUNC5();
			}
		} else {
			FUNC6(1);
		}
	}
	return 0;
}