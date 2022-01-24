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
struct task_struct {int dummy; } ;
struct rdtgroup {int flags; struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {int thread_done; unsigned int cpu; int /*<<< orphan*/  lock_thread_wq; TYPE_1__* d; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_mask; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int RDT_DELETED ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,unsigned int) ; 
 struct task_struct* FUNC8 (int /*<<< orphan*/ ,struct pseudo_lock_region*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  measure_cycles_lat_fn ; 
 int /*<<< orphan*/  measure_l2_residency ; 
 int /*<<< orphan*/  measure_l3_residency ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

__attribute__((used)) static int FUNC13(struct rdtgroup *rdtgrp, int sel)
{
	struct pseudo_lock_region *plr = rdtgrp->plr;
	struct task_struct *thread;
	unsigned int cpu;
	int ret = -1;

	FUNC5();
	FUNC9(&rdtgroup_mutex);

	if (rdtgrp->flags & RDT_DELETED) {
		ret = -ENODEV;
		goto out;
	}

	if (!plr->d) {
		ret = -ENODEV;
		goto out;
	}

	plr->thread_done = 0;
	cpu = FUNC4(&plr->d->cpu_mask);
	if (!FUNC2(cpu)) {
		ret = -ENODEV;
		goto out;
	}

	plr->cpu = cpu;

	if (sel == 1)
		thread = FUNC8(measure_cycles_lat_fn, plr,
						FUNC3(cpu),
						"pseudo_lock_measure/%u",
						cpu);
	else if (sel == 2)
		thread = FUNC8(measure_l2_residency, plr,
						FUNC3(cpu),
						"pseudo_lock_measure/%u",
						cpu);
	else if (sel == 3)
		thread = FUNC8(measure_l3_residency, plr,
						FUNC3(cpu),
						"pseudo_lock_measure/%u",
						cpu);
	else
		goto out;

	if (FUNC0(thread)) {
		ret = FUNC1(thread);
		goto out;
	}
	FUNC7(thread, cpu);
	FUNC12(thread);

	ret = FUNC11(plr->lock_thread_wq,
				       plr->thread_done == 1);
	if (ret < 0)
		goto out;

	ret = 0;

out:
	FUNC10(&rdtgroup_mutex);
	FUNC6();
	return ret;
}