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
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_NORESTART ; 
 int HRTIMER_RESTART ; 
 int NMI_WATCHDOG_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  watchdog_cpumask ; 
 int watchdog_enabled ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  wd_timer_period_ms ; 

__attribute__((used)) static enum hrtimer_restart FUNC5(struct hrtimer *hrtimer)
{
	int cpu = FUNC3();

	if (!(watchdog_enabled & NMI_WATCHDOG_ENABLED))
		return HRTIMER_NORESTART;

	if (!FUNC0(cpu, &watchdog_cpumask))
		return HRTIMER_NORESTART;

	FUNC4(cpu);

	FUNC1(hrtimer, FUNC2(wd_timer_period_ms));

	return HRTIMER_RESTART;
}