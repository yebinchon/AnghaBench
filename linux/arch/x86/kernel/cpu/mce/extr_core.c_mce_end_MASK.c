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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ monarch_timeout; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  SPINUNIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  global_nwo ; 
 TYPE_1__ mca_cfg ; 
 int /*<<< orphan*/  mce_callin ; 
 int /*<<< orphan*/  mce_executing ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 

__attribute__((used)) static int FUNC8(int order)
{
	int ret = -1;
	u64 timeout = (u64)mca_cfg.monarch_timeout * NSEC_PER_USEC;

	if (!timeout)
		goto reset;
	if (order < 0)
		goto reset;

	/*
	 * Allow others to run.
	 */
	FUNC0(&mce_executing);

	if (order == 1) {
		/* CHECKME: Can this race with a parallel hotplug? */
		int cpus = FUNC7();

		/*
		 * Monarch: Wait for everyone to go through their scanning
		 * loops.
		 */
		while (FUNC1(&mce_executing) <= cpus) {
			if (FUNC5(&timeout,
					  "Timeout: Monarch CPU unable to finish machine check processing"))
				goto reset;
			FUNC6(SPINUNIT);
		}

		FUNC4();
		FUNC3();
		ret = 0;
	} else {
		/*
		 * Subject: Wait for Monarch to finish.
		 */
		while (FUNC1(&mce_executing) != 0) {
			if (FUNC5(&timeout,
					  "Timeout: Monarch CPU did not finish machine check processing"))
				goto reset;
			FUNC6(SPINUNIT);
		}

		/*
		 * Don't reset anything. That's done by the Monarch.
		 */
		return 0;
	}

	/*
	 * Reset all global state.
	 */
reset:
	FUNC2(&global_nwo, 0);
	FUNC2(&mce_callin, 0);
	FUNC3();

	/*
	 * Let others run again.
	 */
	FUNC2(&mce_executing, 0);
	return ret;
}