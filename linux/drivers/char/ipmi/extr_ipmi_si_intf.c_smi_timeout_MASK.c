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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq; } ;
struct smi_info {int timer_running; int /*<<< orphan*/  si_lock; int /*<<< orphan*/  interrupt_disabled; TYPE_1__ io; scalar_t__ last_timeout_jiffies; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;

/* Variables and functions */
 int SI_SM_CALL_WITH_DELAY ; 
 int SI_SM_IDLE ; 
 int SI_TIMEOUT_JIFFIES ; 
 long SI_USEC_PER_JIFFY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct smi_info* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  long_timeouts ; 
 int /*<<< orphan*/  short_timeouts ; 
 int /*<<< orphan*/  si_timer ; 
 int FUNC2 (struct smi_info*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct smi_info*,int /*<<< orphan*/ ) ; 
 struct smi_info* smi_info ; 
 int /*<<< orphan*/  FUNC4 (struct smi_info*,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct smi_info   *smi_info = FUNC1(smi_info, t, si_timer);
	enum si_sm_result smi_result;
	unsigned long     flags;
	unsigned long     jiffies_now;
	long              time_diff;
	long		  timeout;

	FUNC5(&(smi_info->si_lock), flags);
	FUNC0("Timer");

	jiffies_now = jiffies;
	time_diff = (((long)jiffies_now - (long)smi_info->last_timeout_jiffies)
		     * SI_USEC_PER_JIFFY);
	smi_result = FUNC2(smi_info, time_diff);

	if ((smi_info->io.irq) && (!smi_info->interrupt_disabled)) {
		/* Running with interrupts, only do long timeouts. */
		timeout = jiffies + SI_TIMEOUT_JIFFIES;
		FUNC3(smi_info, long_timeouts);
		goto do_mod_timer;
	}

	/*
	 * If the state machine asks for a short delay, then shorten
	 * the timer timeout.
	 */
	if (smi_result == SI_SM_CALL_WITH_DELAY) {
		FUNC3(smi_info, short_timeouts);
		timeout = jiffies + 1;
	} else {
		FUNC3(smi_info, long_timeouts);
		timeout = jiffies + SI_TIMEOUT_JIFFIES;
	}

do_mod_timer:
	if (smi_result != SI_SM_IDLE)
		FUNC4(smi_info, timeout);
	else
		smi_info->timer_running = false;
	FUNC6(&(smi_info->si_lock), flags);
}