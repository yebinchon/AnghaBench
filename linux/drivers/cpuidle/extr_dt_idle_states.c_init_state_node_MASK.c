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
typedef  scalar_t__ u32 ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct device_node {char* name; } ;
struct cpuidle_state {int /*<<< orphan*/  desc; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; scalar_t__ target_residency; scalar_t__ exit_latency; int /*<<< orphan*/  enter_s2idle; int /*<<< orphan*/  enter; } ;

/* Variables and functions */
 scalar_t__ CPUIDLE_DESC_LEN ; 
 int /*<<< orphan*/  CPUIDLE_FLAG_TIMER_STOP ; 
 scalar_t__ CPUIDLE_NAME_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 int FUNC1 (struct device_node*,char*,char const**) ; 
 int FUNC2 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct cpuidle_state *idle_state,
			   const struct of_device_id *match_id,
			   struct device_node *state_node)
{
	int err;
	const char *desc;

	/*
	 * CPUidle drivers are expected to initialize the const void *data
	 * pointer of the passed in struct of_device_id array to the idle
	 * state enter function.
	 */
	idle_state->enter = match_id->data;
	/*
	 * Since this is not a "coupled" state, it's safe to assume interrupts
	 * won't be enabled when it exits allowing the tick to be frozen
	 * safely. So enter() can be also enter_s2idle() callback.
	 */
	idle_state->enter_s2idle = match_id->data;

	err = FUNC2(state_node, "wakeup-latency-us",
				   &idle_state->exit_latency);
	if (err) {
		u32 entry_latency, exit_latency;

		err = FUNC2(state_node, "entry-latency-us",
					   &entry_latency);
		if (err) {
			FUNC3(" * %pOF missing entry-latency-us property\n",
				 state_node);
			return -EINVAL;
		}

		err = FUNC2(state_node, "exit-latency-us",
					   &exit_latency);
		if (err) {
			FUNC3(" * %pOF missing exit-latency-us property\n",
				 state_node);
			return -EINVAL;
		}
		/*
		 * If wakeup-latency-us is missing, default to entry+exit
		 * latencies as defined in idle states bindings
		 */
		idle_state->exit_latency = entry_latency + exit_latency;
	}

	err = FUNC2(state_node, "min-residency-us",
				   &idle_state->target_residency);
	if (err) {
		FUNC3(" * %pOF missing min-residency-us property\n",
			     state_node);
		return -EINVAL;
	}

	err = FUNC1(state_node, "idle-state-name", &desc);
	if (err)
		desc = state_node->name;

	idle_state->flags = 0;
	if (FUNC0(state_node, "local-timer-stop"))
		idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;
	/*
	 * TODO:
	 *	replace with kstrdup and pointer assignment when name
	 *	and desc become string pointers
	 */
	FUNC4(idle_state->name, state_node->name, CPUIDLE_NAME_LEN - 1);
	FUNC4(idle_state->desc, desc, CPUIDLE_DESC_LEN - 1);
	return 0;
}