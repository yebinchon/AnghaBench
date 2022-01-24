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
struct object_id {int dummy; } ;
struct object {int /*<<< orphan*/  flags; } ;
struct all_refs_cb {int warned_bad_reflog; int /*<<< orphan*/  name_for_errormsg; TYPE_1__* all_revs; int /*<<< orphan*/  all_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct object*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct object_id *oid, void *cb_data)
{
	struct all_refs_cb *cb = cb_data;
	if (!FUNC1(oid)) {
		struct object *o = FUNC2(cb->all_revs->repo, oid);
		if (o) {
			o->flags |= cb->all_flags;
			/* ??? CMDLINEFLAGS ??? */
			FUNC0(cb->all_revs, o, "");
		}
		else if (!cb->warned_bad_reflog) {
			FUNC3("reflog of '%s' references pruned commits",
				cb->name_for_errormsg);
			cb->warned_bad_reflog = 1;
		}
	}
}