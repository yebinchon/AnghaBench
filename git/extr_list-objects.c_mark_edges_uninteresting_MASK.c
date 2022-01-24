#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  oid; } ;
struct tree {TYPE_1__ object; } ;
struct TYPE_8__ {int nr; TYPE_3__* rev; } ;
struct rev_info {int /*<<< orphan*/  repo; TYPE_4__ cmdline; scalar_t__ edge_hint_aggressive; struct commit_list* commits; } ;
struct oidset {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_6__ {int flags; } ;
struct commit {TYPE_2__ object; } ;
typedef  int /*<<< orphan*/  (* show_edge_fn ) (struct commit*) ;
struct TYPE_7__ {struct object* item; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int SHOWN ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct rev_info*,int /*<<< orphan*/  (*) (struct commit*),struct oidset*) ; 
 struct tree* FUNC1 (struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,struct rev_info*,int /*<<< orphan*/  (*) (struct commit*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tree*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct oidset*) ; 
 int /*<<< orphan*/  FUNC5 (struct oidset*) ; 
 int /*<<< orphan*/  FUNC6 (struct oidset*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct oidset*,int /*<<< orphan*/ *) ; 

void FUNC8(struct rev_info *revs,
			      show_edge_fn show_edge,
			      int sparse)
{
	struct commit_list *list;
	int i;

	if (sparse) {
		struct oidset set;
		FUNC6(&set, 16);

		for (list = revs->commits; list; list = list->next) {
			struct commit *commit = list->item;
			struct tree *tree = FUNC1(commit);

			if (commit->object.flags & UNINTERESTING)
				tree->object.flags |= UNINTERESTING;

			FUNC7(&set, &tree->object.oid);
			FUNC0(commit, revs, show_edge, &set);
		}

		FUNC4(revs->repo, &set);
		FUNC5(&set);
	} else {
		for (list = revs->commits; list; list = list->next) {
			struct commit *commit = list->item;
			if (commit->object.flags & UNINTERESTING) {
				FUNC3(revs->repo,
							FUNC1(commit));
				if (revs->edge_hint_aggressive && !(commit->object.flags & SHOWN)) {
					commit->object.flags |= SHOWN;
					show_edge(commit);
				}
				continue;
			}
			FUNC2(commit, revs, show_edge);
		}
	}

	if (revs->edge_hint_aggressive) {
		for (i = 0; i < revs->cmdline.nr; i++) {
			struct object *obj = revs->cmdline.rev[i].item;
			struct commit *commit = (struct commit *)obj;
			if (obj->type != OBJ_COMMIT || !(obj->flags & UNINTERESTING))
				continue;
			FUNC3(revs->repo,
						FUNC1(commit));
			if (!(obj->flags & SHOWN)) {
				obj->flags |= SHOWN;
				show_edge(commit);
			}
		}
	}
}