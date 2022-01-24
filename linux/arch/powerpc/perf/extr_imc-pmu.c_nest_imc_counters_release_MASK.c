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
struct perf_event {scalar_t__ cpu; } ;
struct imc_pmu_ref {scalar_t__ refc; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_NEST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct imc_pmu_ref* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event)
{
	int rc, node_id;
	struct imc_pmu_ref *ref;

	if (event->cpu < 0)
		return;

	node_id = FUNC1(event->cpu);

	/*
	 * See if we need to disable the nest PMU.
	 * If no events are currently in use, then we have to take a
	 * mutex to ensure that we don't race with another task doing
	 * enable or disable the nest counters.
	 */
	ref = FUNC3(event->cpu);
	if (!ref)
		return;

	/* Take the mutex lock for this node and then decrement the reference count */
	FUNC4(&ref->lock);
	if (ref->refc == 0) {
		/*
		 * The scenario where this is true is, when perf session is
		 * started, followed by offlining of all cpus in a given node.
		 *
		 * In the cpuhotplug offline path, ppc_nest_imc_cpu_offline()
		 * function set the ref->count to zero, if the cpu which is
		 * about to offline is the last cpu in a given node and make
		 * an OPAL call to disable the engine in that node.
		 *
		 */
		FUNC5(&ref->lock);
		return;
	}
	ref->refc--;
	if (ref->refc == 0) {
		rc = FUNC6(OPAL_IMC_COUNTERS_NEST,
					    FUNC2(event->cpu));
		if (rc) {
			FUNC5(&ref->lock);
			FUNC7("nest-imc: Unable to stop the counters for core %d\n", node_id);
			return;
		}
	} else if (ref->refc < 0) {
		FUNC0(1, "nest-imc: Invalid event reference count\n");
		ref->refc = 0;
	}
	FUNC5(&ref->lock);
}