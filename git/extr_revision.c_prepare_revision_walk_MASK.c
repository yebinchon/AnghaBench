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
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_8__ {int /*<<< orphan*/ * objects; scalar_t__ alloc; scalar_t__ nr; } ;
struct rev_info {scalar_t__ no_walk; TYPE_3__ children; scalar_t__ simplify_merges; scalar_t__ line_level_traverse; scalar_t__ topo_order; int /*<<< orphan*/  sort_order; struct commit_list* commits; scalar_t__ limited; scalar_t__ exclude_promisor_objects; TYPE_2__ treesame; TYPE_4__ pending; } ;
struct object_array_entry {int dummy; } ;
struct object_array {int nr; struct object_array_entry* objects; } ;
struct commit_list {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct commit {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  old_pending ;

/* Variables and functions */
 int /*<<< orphan*/  FOR_EACH_OBJECT_PROMISOR_ONLY ; 
 scalar_t__ REVISION_WALK_NO_WALK_UNSORTED ; 
 int SEEN ; 
 struct commit_list** FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ ) ; 
 struct commit* FUNC3 (struct rev_info*,struct object_array_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rev_info*) ; 
 scalar_t__ FUNC5 (struct rev_info*) ; 
 scalar_t__ FUNC6 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct rev_info*) ; 
 int /*<<< orphan*/  mark_uninteresting ; 
 int /*<<< orphan*/  FUNC8 (struct object_array*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC10 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct commit_list**,int /*<<< orphan*/ ) ; 

int FUNC13(struct rev_info *revs)
{
	int i;
	struct object_array old_pending;
	struct commit_list **next = &revs->commits;

	FUNC8(&old_pending, &revs->pending, sizeof(old_pending));
	revs->pending.nr = 0;
	revs->pending.alloc = 0;
	revs->pending.objects = NULL;
	for (i = 0; i < old_pending.nr; i++) {
		struct object_array_entry *e = old_pending.objects + i;
		struct commit *commit = FUNC3(revs, e);
		if (commit) {
			if (!(commit->object.flags & SEEN)) {
				commit->object.flags |= SEEN;
				next = FUNC0(commit, next);
			}
		}
	}
	FUNC9(&old_pending);

	/* Signal whether we need per-parent treesame decoration */
	if (revs->simplify_merges ||
	    (revs->limited && FUNC6(revs)))
		revs->treesame.name = "treesame";

	if (revs->exclude_promisor_objects) {
		FUNC2(mark_uninteresting, revs,
				       FOR_EACH_OBJECT_PROMISOR_ONLY);
	}

	if (revs->no_walk != REVISION_WALK_NO_WALK_UNSORTED)
		FUNC1(&revs->commits);
	if (revs->no_walk)
		return 0;
	if (revs->limited) {
		if (FUNC5(revs) < 0)
			return -1;
		if (revs->topo_order)
			FUNC12(&revs->commits, revs->sort_order);
	} else if (revs->topo_order)
		FUNC4(revs);
	if (revs->line_level_traverse)
		FUNC7(revs);
	if (revs->simplify_merges)
		FUNC11(revs);
	if (revs->children.name)
		FUNC10(revs);
	return 0;
}