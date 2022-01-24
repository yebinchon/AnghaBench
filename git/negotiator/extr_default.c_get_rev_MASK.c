#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct TYPE_9__ {scalar_t__ nr; } ;
struct negotiation_state {scalar_t__ non_common_revs; TYPE_4__ rev_list; } ;
struct commit_list {struct commit_list* next; TYPE_3__* item; } ;
struct TYPE_7__ {int flags; struct object_id const oid; } ;
struct commit {TYPE_2__ object; struct commit_list* parents; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ object; } ;

/* Variables and functions */
 int COMMON ; 
 int COMMON_REF ; 
 int POPPED ; 
 int SEEN ; 
 int /*<<< orphan*/  FUNC0 (struct negotiation_state*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 struct commit* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct negotiation_state*,TYPE_3__*,unsigned int) ; 

__attribute__((used)) static const struct object_id *FUNC4(struct negotiation_state *ns)
{
	struct commit *commit = NULL;

	while (commit == NULL) {
		unsigned int mark;
		struct commit_list *parents;

		if (ns->rev_list.nr == 0 || ns->non_common_revs == 0)
			return NULL;

		commit = FUNC2(&ns->rev_list);
		FUNC1(commit);
		parents = commit->parents;

		commit->object.flags |= POPPED;
		if (!(commit->object.flags & COMMON))
			ns->non_common_revs--;

		if (commit->object.flags & COMMON) {
			/* do not send "have", and ignore ancestors */
			commit = NULL;
			mark = COMMON | SEEN;
		} else if (commit->object.flags & COMMON_REF)
			/* send "have", and ignore ancestors */
			mark = COMMON | SEEN;
		else
			/* send "have", also for its ancestors */
			mark = SEEN;

		while (parents) {
			if (!(parents->item->object.flags & SEEN))
				FUNC3(ns, parents->item, mark);
			if (mark & COMMON)
				FUNC0(ns, parents->item, 1, 0);
			parents = parents->next;
		}
	}

	return &commit->object.oid;
}