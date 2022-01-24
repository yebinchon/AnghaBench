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
struct rmid_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  busy; int /*<<< orphan*/  rmid; } ;
struct rdt_resource {scalar_t__ num_rmid; } ;
struct rdt_domain {int /*<<< orphan*/  rmid_busy_llc; } ;

/* Variables and functions */
 size_t RDT_RESOURCE_L3 ; 
 struct rmid_entry* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rdt_resource* rdt_resources_all ; 
 int /*<<< orphan*/  FUNC4 (struct rmid_entry*) ; 
 int /*<<< orphan*/  rmid_free_lru ; 
 int /*<<< orphan*/  rmid_limbo_count ; 

void FUNC5(struct rdt_domain *d, bool force_free)
{
	struct rmid_entry *entry;
	struct rdt_resource *r;
	u32 crmid = 1, nrmid;

	r = &rdt_resources_all[RDT_RESOURCE_L3];

	/*
	 * Skip RMID 0 and start from RMID 1 and check all the RMIDs that
	 * are marked as busy for occupancy < threshold. If the occupancy
	 * is less than the threshold decrement the busy counter of the
	 * RMID and move it to the free list when the counter reaches 0.
	 */
	for (;;) {
		nrmid = FUNC2(d->rmid_busy_llc, r->num_rmid, crmid);
		if (nrmid >= r->num_rmid)
			break;

		entry = FUNC0(nrmid);
		if (force_free || !FUNC4(entry)) {
			FUNC1(entry->rmid, d->rmid_busy_llc);
			if (!--entry->busy) {
				rmid_limbo_count--;
				FUNC3(&entry->list, &rmid_free_lru);
			}
		}
		crmid = nrmid + 1;
	}
}