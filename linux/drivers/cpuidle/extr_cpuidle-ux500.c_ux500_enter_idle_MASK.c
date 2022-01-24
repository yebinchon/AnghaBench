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
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCMU_AP_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  master ; 
 int /*<<< orphan*/  master_lock ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC14(struct cpuidle_device *dev,
				   struct cpuidle_driver *drv, int index)
{
	int this_cpu = FUNC11();
	bool recouple = false;

	if (FUNC1(&master) == FUNC3()) {

		/* With this lock, we prevent the other cpu to exit and enter
		 * this function again and become the master */
		if (!FUNC12(&master_lock))
			goto wfi;

		/* decouple the gic from the A9 cores */
		if (FUNC5()) {
			FUNC13(&master_lock);
			goto out;
		}

		/* If an error occur, we will have to recouple the gic
		 * manually */
		recouple = true;

		/* At this state, as the gic is decoupled, if the other
		 * cpu is in WFI, we have the guarantee it won't be wake
		 * up, so we can safely go to retention */
		if (!FUNC8(this_cpu ? 0 : 1))
			goto out;

		/* The prcmu will be in charge of watching the interrupts
		 * and wake up the cpus */
		if (FUNC4())
			goto out;

		/* Check in the meantime an interrupt did
		 * not occur on the gic ... */
		if (FUNC6())
			goto out;

		/* ... and the prcmu */
		if (FUNC9())
			goto out;

		/* Go to the retention state, the prcmu will wait for the
		 * cpu to go WFI and this is what happens after exiting this
		 * 'master' critical section */
		if (FUNC10(PRCMU_AP_IDLE, true, true))
			goto out;

		/* When we switch to retention, the prcmu is in charge
		 * of recoupling the gic automatically */
		recouple = false;

		FUNC13(&master_lock);
	}
wfi:
	FUNC2();
out:
	FUNC0(&master);

	if (recouple) {
		FUNC7();
		FUNC13(&master_lock);
	}

	return index;
}