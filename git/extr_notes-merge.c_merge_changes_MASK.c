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
struct notes_tree {int dummy; } ;
struct notes_merge_pair {int /*<<< orphan*/  remote; int /*<<< orphan*/  obj; int /*<<< orphan*/  base; int /*<<< orphan*/  local; } ;
struct notes_merge_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct notes_tree*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 scalar_t__ FUNC2 (struct notes_merge_options*,struct notes_merge_pair*,struct notes_tree*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  uninitialized ; 

__attribute__((used)) static int FUNC6(struct notes_merge_options *o,
			 struct notes_merge_pair *changes, int *num_changes,
			 struct notes_tree *t)
{
	int i, conflicts = 0;

	FUNC5("\tmerge_changes(num_changes = %i)\n", *num_changes);
	for (i = 0; i < *num_changes; i++) {
		struct notes_merge_pair *p = changes + i;
		FUNC5("\t\t%.7s: %.7s -> %.7s/%.7s\n",
		       FUNC3(&p->obj), FUNC3(&p->base),
		       FUNC3(&p->local),
		       FUNC3(&p->remote));

		if (FUNC4(&p->base, &p->remote)) {
			/* no remote change; nothing to do */
			FUNC5("\t\t\tskipping (no remote change)\n");
		} else if (FUNC4(&p->local, &p->remote)) {
			/* same change in local and remote; nothing to do */
			FUNC5("\t\t\tskipping (local == remote)\n");
		} else if (FUNC4(&p->local, &uninitialized) ||
			   FUNC4(&p->local, &p->base)) {
			/* no local change; adopt remote change */
			FUNC5("\t\t\tno local change, adopted remote\n");
			if (FUNC1(t, &p->obj, &p->remote,
				     combine_notes_overwrite))
				FUNC0("combine_notes_overwrite failed");
		} else {
			/* need file-level merge between local and remote */
			FUNC5("\t\t\tneed content-level merge\n");
			conflicts += FUNC2(o, p, t);
		}
	}

	return conflicts;
}