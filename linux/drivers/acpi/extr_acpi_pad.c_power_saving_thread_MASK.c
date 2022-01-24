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
typedef  int u64 ;
struct sched_param {int sched_priority; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SCHED_RR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int idle_pct ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  power_saving_mwait_eax ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int round_robin_time ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (unsigned long,int) ; 
 scalar_t__ tsc_detected_unstable ; 
 int tsc_marked_unstable ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(void *data)
{
	struct sched_param param = {.sched_priority = 1};
	int do_sleep;
	unsigned int tsk_index = (unsigned long)data;
	u64 last_jiffies = 0;

	FUNC8(current, SCHED_RR, &param);

	while (!FUNC1()) {
		unsigned long expire_time;

		/* round robin to cpus */
		expire_time = last_jiffies + round_robin_time * HZ;
		if (FUNC16(expire_time, jiffies)) {
			last_jiffies = jiffies;
			FUNC7(tsk_index);
		}

		do_sleep = 0;

		expire_time = jiffies + HZ * (100 - idle_pct) / 100;

		while (!FUNC6()) {
			if (tsc_detected_unstable && !tsc_marked_unstable) {
				/* TSC could halt in idle, so notify users */
				FUNC4("TSC halts in idle");
				tsc_marked_unstable = 1;
			}
			FUNC2();
			FUNC13();
			FUNC14();
			FUNC12();

			FUNC5(power_saving_mwait_eax, 1);

			FUNC11();
			FUNC15();
			FUNC3();

			if (FUNC16(expire_time, jiffies)) {
				do_sleep = 1;
				break;
			}
		}

		/*
		 * current sched_rt has threshold for rt task running time.
		 * When a rt task uses 95% CPU time, the rt thread will be
		 * scheduled out for 5% CPU time to not starve other tasks. But
		 * the mechanism only works when all CPUs have RT task running,
		 * as if one CPU hasn't RT task, RT task from other CPUs will
		 * borrow CPU time from this CPU and cause RT task use > 95%
		 * CPU time. To make 'avoid starvation' work, takes a nap here.
		 */
		if (FUNC17(do_sleep))
			FUNC10(HZ * idle_pct / 100);

		/* If an external event has set the need_resched flag, then
		 * we need to deal with it, or this loop will continue to
		 * spin without calling __mwait().
		 */
		if (FUNC17(FUNC6()))
			FUNC9();
	}

	FUNC0(tsk_index);
	return 0;
}