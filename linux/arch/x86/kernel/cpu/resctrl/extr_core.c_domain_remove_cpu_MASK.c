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
struct rdt_resource {int /*<<< orphan*/  cache_level; } ;
struct rdt_domain {int mbm_work_cpu; int cqm_work_cpu; int /*<<< orphan*/  cqm_limbo; int /*<<< orphan*/  mbm_over; struct rdt_domain* mbm_local; struct rdt_domain* mbm_total; int /*<<< orphan*/  rmid_busy_llc; struct rdt_domain* mbps_val; struct rdt_domain* ctrl_val; TYPE_1__* plr; int /*<<< orphan*/  list; int /*<<< orphan*/  id; int /*<<< orphan*/  cpu_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/ * d; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rdt_domain*) ; 
 size_t RDT_RESOURCE_L3 ; 
 int /*<<< orphan*/  FUNC1 (struct rdt_domain*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rdt_domain*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rdt_resource*,struct rdt_domain*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct rdt_domain*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct rdt_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 struct rdt_domain* FUNC15 (struct rdt_resource*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdt_mon_enable_key ; 
 struct rdt_resource* rdt_resources_all ; 
 int /*<<< orphan*/  FUNC16 (struct rdt_resource*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(int cpu, struct rdt_resource *r)
{
	int id = FUNC7(cpu, r->cache_level);
	struct rdt_domain *d;

	d = FUNC15(r, id, NULL);
	if (FUNC0(d)) {
		FUNC14("Could't find cache id for cpu %d\n", cpu);
		return;
	}

	FUNC4(cpu, &d->cpu_mask);
	if (FUNC5(&d->cpu_mask)) {
		/*
		 * If resctrl is mounted, remove all the
		 * per domain monitor data directories.
		 */
		if (FUNC17(&rdt_mon_enable_key))
			FUNC16(r, d->id);
		FUNC12(&d->list);
		if (FUNC10())
			FUNC3(&d->mbm_over);
		if (FUNC9() &&  FUNC8(r, d)) {
			/*
			 * When a package is going down, forcefully
			 * decrement rmid->ebusy. There is no way to know
			 * that the L3 was flushed and hence may lead to
			 * incorrect counts in rare scenarios, but leaving
			 * the RMID as busy creates RMID leaks if the
			 * package never comes back.
			 */
			FUNC1(d, true);
			FUNC3(&d->cqm_limbo);
		}

		/*
		 * rdt_domain "d" is going to be freed below, so clear
		 * its pointer from pseudo_lock_region struct.
		 */
		if (d->plr)
			d->plr->d = NULL;

		FUNC11(d->ctrl_val);
		FUNC11(d->mbps_val);
		FUNC2(d->rmid_busy_llc);
		FUNC11(d->mbm_total);
		FUNC11(d->mbm_local);
		FUNC11(d);
		return;
	}

	if (r == &rdt_resources_all[RDT_RESOURCE_L3]) {
		if (FUNC10() && cpu == d->mbm_work_cpu) {
			FUNC3(&d->mbm_over);
			FUNC13(d, 0);
		}
		if (FUNC9() && cpu == d->cqm_work_cpu &&
		    FUNC8(r, d)) {
			FUNC3(&d->cqm_limbo);
			FUNC6(d, 0);
		}
	}
}