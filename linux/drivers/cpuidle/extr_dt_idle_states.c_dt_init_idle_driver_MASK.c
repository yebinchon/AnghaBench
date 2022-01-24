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
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;
struct cpuidle_state {int dummy; } ;
struct cpuidle_driver {unsigned int state_count; struct cpuidle_state* states; int /*<<< orphan*/  cpumask; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 unsigned int CPUIDLE_STATE_MAX ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/ * cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int,int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct cpuidle_state*,struct of_device_id const*,struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct of_device_id* FUNC5 (struct of_device_id const*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

int FUNC10(struct cpuidle_driver *drv,
			const struct of_device_id *matches,
			unsigned int start_idx)
{
	struct cpuidle_state *idle_state;
	struct device_node *state_node, *cpu_node;
	const struct of_device_id *match_id;
	int i, err = 0;
	const cpumask_t *cpumask;
	unsigned int state_idx = start_idx;

	if (state_idx >= CPUIDLE_STATE_MAX)
		return -EINVAL;
	/*
	 * We get the idle states for the first logical cpu in the
	 * driver mask (or cpu_possible_mask if the driver cpumask is not set)
	 * and we check through idle_state_valid() if they are uniform
	 * across CPUs, otherwise we hit a firmware misconfiguration.
	 */
	cpumask = drv->cpumask ? : cpu_possible_mask;
	cpu_node = FUNC3(FUNC0(cpumask));

	for (i = 0; ; i++) {
		state_node = FUNC7(cpu_node, "cpu-idle-states", i);
		if (!state_node)
			break;

		match_id = FUNC5(matches, state_node);
		if (!match_id) {
			err = -ENODEV;
			break;
		}

		if (!FUNC4(state_node)) {
			FUNC6(state_node);
			continue;
		}

		if (!FUNC1(state_node, i, cpumask)) {
			FUNC9("%pOF idle state not valid, bailing out\n",
				state_node);
			err = -EINVAL;
			break;
		}

		if (state_idx == CPUIDLE_STATE_MAX) {
			FUNC9("State index reached static CPU idle driver states array size\n");
			break;
		}

		idle_state = &drv->states[state_idx++];
		err = FUNC2(idle_state, match_id, state_node);
		if (err) {
			FUNC8("Parsing idle state node %pOF failed with err %d\n",
			       state_node, err);
			err = -EINVAL;
			break;
		}
		FUNC6(state_node);
	}

	FUNC6(state_node);
	FUNC6(cpu_node);
	if (err)
		return err;
	/*
	 * Update the driver state count only if some valid DT idle states
	 * were detected
	 */
	if (i)
		drv->state_count = state_idx;

	/*
	 * Return the number of present and valid DT idle states, which can
	 * also be 0 on platforms with missing DT idle states or legacy DT
	 * configuration predating the DT idle states bindings.
	 */
	return i;
}