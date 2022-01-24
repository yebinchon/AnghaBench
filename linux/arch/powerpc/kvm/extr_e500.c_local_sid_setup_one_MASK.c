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
struct id {unsigned long val; int /*<<< orphan*/  pentry; } ;
struct TYPE_2__ {int /*<<< orphan*/ * entry; } ;

/* Variables and functions */
 unsigned long NUM_TIDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct id*) ; 
 int /*<<< orphan*/  pcpu_last_used_sid ; 
 TYPE_1__ pcpu_sids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct id *entry)
{
	unsigned long sid;
	int ret = -1;

	sid = FUNC1(pcpu_last_used_sid);
	if (sid < NUM_TIDS) {
		FUNC2(pcpu_sids.entry[sid], entry);
		entry->val = sid;
		entry->pentry = FUNC3(&pcpu_sids.entry[sid]);
		ret = sid;
	}

	/*
	 * If sid == NUM_TIDS, we've run out of sids.  We return -1, and
	 * the caller will invalidate everything and start over.
	 *
	 * sid > NUM_TIDS indicates a race, which we disable preemption to
	 * avoid.
	 */
	FUNC0(sid > NUM_TIDS);

	return ret;
}