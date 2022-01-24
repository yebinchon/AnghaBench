#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lppaca_ptr; } ;
struct TYPE_6__ {int target_residency; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FW_FEATURE_SPLPAR ; 
 scalar_t__ IDLE_NO_OVERRIDE ; 
 scalar_t__ cpuidle_disable ; 
 TYPE_1__* cpuidle_state_table ; 
 TYPE_1__* dedicated_states ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* local_paca ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int max_idle_state ; 
 TYPE_1__* shared_states ; 
 int snooze_timeout ; 
 int snooze_timeout_en ; 
 int tb_ticks_per_usec ; 

__attribute__((used)) static int FUNC3(void)
{

	if (cpuidle_disable != IDLE_NO_OVERRIDE)
		return -ENODEV;

	if (FUNC1(FW_FEATURE_SPLPAR)) {
		/*
		 * Use local_paca instead of get_lppaca() since
		 * preemption is not disabled, and it is not required in
		 * fact, since lppaca_ptr does not need to be the value
		 * associated to the current CPU, it can be from any CPU.
		 */
		if (FUNC2(local_paca->lppaca_ptr)) {
			cpuidle_state_table = shared_states;
			max_idle_state = FUNC0(shared_states);
		} else {
			cpuidle_state_table = dedicated_states;
			max_idle_state = FUNC0(dedicated_states);
		}
	} else
		return -ENODEV;

	if (max_idle_state > 1) {
		snooze_timeout_en = true;
		snooze_timeout = cpuidle_state_table[1].target_residency *
				 tb_ticks_per_usec;
	}
	return 0;
}