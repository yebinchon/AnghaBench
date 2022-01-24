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
struct intel_excl_states {int sched_started; } ;
struct intel_excl_cntrs {int /*<<< orphan*/  lock; struct intel_excl_states* states; } ;
struct cpu_hw_events {int excl_thread_id; scalar_t__ is_fake; struct intel_excl_cntrs* excl_cntrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct cpu_hw_events *cpuc)
{
	struct intel_excl_cntrs *excl_cntrs = cpuc->excl_cntrs;
	struct intel_excl_states *xl;
	int tid = cpuc->excl_thread_id;

	/*
	 * nothing needed if in group validation mode
	 */
	if (cpuc->is_fake || !FUNC1())
		return;

	/*
	 * no exclusion needed
	 */
	if (FUNC0(!excl_cntrs))
		return;

	xl = &excl_cntrs->states[tid];

	xl->sched_started = true;
	/*
	 * lock shared state until we are done scheduling
	 * in stop_event_scheduling()
	 * makes scheduling appear as a transaction
	 */
	FUNC2(&excl_cntrs->lock);
}