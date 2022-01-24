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
struct idle_statedata {scalar_t__ mpu_state_vote; int /*<<< orphan*/  cpu_state; int /*<<< orphan*/  mpu_state; int /*<<< orphan*/  mpu_logic_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWRDM_POWER_ON ; 
 int /*<<< orphan*/  mpu_lock ; 
 int /*<<< orphan*/  mpu_pd ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idle_statedata* state_ptr ; 

__attribute__((used)) static int FUNC6(struct cpuidle_device *dev,
			       struct cpuidle_driver *drv,
			       int index)
{
	struct idle_statedata *cx = state_ptr + index;
	unsigned long flag;

	FUNC4(&mpu_lock, flag);
	cx->mpu_state_vote++;
	if (cx->mpu_state_vote == FUNC0()) {
		FUNC3(mpu_pd, cx->mpu_logic_state);
		FUNC2(mpu_pd, cx->mpu_state);
	}
	FUNC5(&mpu_lock, flag);

	FUNC1(dev->cpu, cx->cpu_state);

	FUNC4(&mpu_lock, flag);
	if (cx->mpu_state_vote == FUNC0())
		FUNC2(mpu_pd, PWRDM_POWER_ON);
	cx->mpu_state_vote--;
	FUNC5(&mpu_lock, flag);

	return index;
}