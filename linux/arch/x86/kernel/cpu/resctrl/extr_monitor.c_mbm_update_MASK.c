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
struct rmid_read {int first; int /*<<< orphan*/  evtid; struct rdt_domain* d; } ;
struct rdt_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QOS_L3_MBM_LOCAL_EVENT_ID ; 
 int /*<<< orphan*/  QOS_L3_MBM_TOTAL_EVENT_ID ; 
 int /*<<< orphan*/  FUNC0 (int,struct rmid_read*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,struct rmid_read*) ; 

__attribute__((used)) static void FUNC5(struct rdt_domain *d, int rmid)
{
	struct rmid_read rr;

	rr.first = false;
	rr.d = d;

	/*
	 * This is protected from concurrent reads from user
	 * as both the user and we hold the global mutex.
	 */
	if (FUNC3()) {
		rr.evtid = QOS_L3_MBM_TOTAL_EVENT_ID;
		FUNC0(rmid, &rr);
	}
	if (FUNC2()) {
		rr.evtid = QOS_L3_MBM_LOCAL_EVENT_ID;

		/*
		 * Call the MBA software controller only for the
		 * control groups and when user has enabled
		 * the software controller explicitly.
		 */
		if (!FUNC1(NULL))
			FUNC0(rmid, &rr);
		else
			FUNC4(rmid, &rr);
	}
}