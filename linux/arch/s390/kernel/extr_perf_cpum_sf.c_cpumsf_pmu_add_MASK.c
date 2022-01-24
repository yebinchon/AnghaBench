#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int state; } ;
struct perf_event {int /*<<< orphan*/  pmu; TYPE_3__ hw; } ;
struct TYPE_7__ {int h; unsigned long tear; unsigned long dear; int es; int ed; int /*<<< orphan*/  interval; scalar_t__ s; } ;
struct TYPE_6__ {scalar_t__ sdbt; } ;
struct cpu_hw_sf {int flags; struct perf_event* event; TYPE_2__ lsctl; int /*<<< orphan*/  handle; TYPE_1__ sfb; } ;
struct aux_buffer {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int PMU_F_IN_USE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct aux_buffer*,struct cpu_hw_sf*) ; 
 int /*<<< orphan*/  cpu_hw_sf ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__) ; 
 struct aux_buffer* FUNC6 (int /*<<< orphan*/ *,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct cpu_hw_sf* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct perf_event *event, int flags)
{
	struct cpu_hw_sf *cpuhw = FUNC10(&cpu_hw_sf);
	struct aux_buffer *aux;
	int err;

	if (cpuhw->flags & PMU_F_IN_USE)
		return -EAGAIN;

	if (!FUNC0(&event->hw) && !cpuhw->sfb.sdbt)
		return -EINVAL;

	err = 0;
	FUNC8(event->pmu);

	event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

	/* Set up sampling controls.  Always program the sampling register
	 * using the SDB-table start.  Reset TEAR_REG event hardware register
	 * that is used by hw_perf_event_update() to store the sampling buffer
	 * position after samples have been flushed.
	 */
	cpuhw->lsctl.s = 0;
	cpuhw->lsctl.h = 1;
	cpuhw->lsctl.interval = FUNC1(&event->hw);
	if (!FUNC0(&event->hw)) {
		cpuhw->lsctl.tear = (unsigned long) cpuhw->sfb.sdbt;
		cpuhw->lsctl.dear = *(unsigned long *) cpuhw->sfb.sdbt;
		FUNC5(&event->hw, cpuhw->sfb.sdbt);
	}

	/* Ensure sampling functions are in the disabled state.  If disabled,
	 * switch on sampling enable control. */
	if (FUNC2(cpuhw->lsctl.es == 1 || cpuhw->lsctl.ed == 1)) {
		err = -EAGAIN;
		goto out;
	}
	if (FUNC0(&event->hw)) {
		aux = FUNC6(&cpuhw->handle, event);
		if (!aux) {
			err = -EINVAL;
			goto out;
		}
		err = FUNC3(&cpuhw->handle, aux, cpuhw);
		if (err)
			goto out;
		cpuhw->lsctl.ed = 1;
	}
	cpuhw->lsctl.es = 1;

	/* Set in_use flag and store event */
	cpuhw->event = event;
	cpuhw->flags |= PMU_F_IN_USE;

	if (flags & PERF_EF_START)
		FUNC4(event, PERF_EF_RELOAD);
out:
	FUNC7(event);
	FUNC9(event->pmu);
	return err;
}