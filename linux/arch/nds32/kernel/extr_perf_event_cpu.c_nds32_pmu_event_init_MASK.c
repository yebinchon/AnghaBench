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
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct nds32_pmu {int (* map_event ) (struct perf_event*) ;int /*<<< orphan*/  active_events; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct perf_event*) ; 
 int FUNC5 (struct nds32_pmu*) ; 
 int FUNC6 (struct perf_event*) ; 
 struct nds32_pmu* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct perf_event *event)
{
	struct nds32_pmu *nds32_pmu = FUNC7(event->pmu);
	int err = 0;
	atomic_t *active_events = &nds32_pmu->active_events;

	/* does not support taken branch sampling */
	if (FUNC4(event))
		return -EOPNOTSUPP;

	if (nds32_pmu->map_event(event) == -ENOENT)
		return -ENOENT;

	if (!FUNC2(active_events)) {
		if (FUNC3(active_events) == 0) {
			/* Register irq handler */
			err = FUNC5(nds32_pmu);
		}

		if (!err)
			FUNC1(active_events);
	}

	if (err)
		return err;

	err = FUNC0(event);

	return err;
}