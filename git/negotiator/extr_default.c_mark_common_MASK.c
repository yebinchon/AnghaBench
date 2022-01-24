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
struct object {int flags; int /*<<< orphan*/  parsed; } ;
struct negotiation_state {int /*<<< orphan*/  non_common_revs; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;

/* Variables and functions */
 int COMMON ; 
 int POPPED ; 
 int SEEN ; 
 scalar_t__ FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (struct negotiation_state*,struct commit*,int) ; 

__attribute__((used)) static void FUNC2(struct negotiation_state *ns, struct commit *commit,
		int ancestors_only, int dont_parse)
{
	if (commit != NULL && !(commit->object.flags & COMMON)) {
		struct object *o = (struct object *)commit;

		if (!ancestors_only)
			o->flags |= COMMON;

		if (!(o->flags & SEEN))
			FUNC1(ns, commit, SEEN);
		else {
			struct commit_list *parents;

			if (!ancestors_only && !(o->flags & POPPED))
				ns->non_common_revs--;
			if (!o->parsed && !dont_parse)
				if (FUNC0(commit))
					return;

			for (parents = commit->parents;
					parents;
					parents = parents->next)
				FUNC2(ns, parents->item, 0,
					    dont_parse);
		}
	}
}