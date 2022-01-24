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
struct object_id {int dummy; } ;
struct notes_tree {scalar_t__ dirty; } ;
struct notes_merge_pair {int dummy; } ;
struct notes_merge_options {int verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct notes_merge_options*,struct notes_merge_pair*,int,struct object_id const*,struct object_id const*) ; 
 struct notes_merge_pair* FUNC1 (struct notes_merge_options*,struct object_id const*,struct object_id const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct notes_merge_pair*) ; 
 int FUNC3 (struct notes_merge_options*,struct notes_merge_pair*,int*,struct notes_tree*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct notes_merge_options *o,
			    const struct object_id *base,
			    const struct object_id *local,
			    const struct object_id *remote,
			    struct notes_tree *t)
{
	struct notes_merge_pair *changes;
	int num_changes, conflicts;

	FUNC6("\tmerge_from_diffs(base = %.7s, local = %.7s, "
	       "remote = %.7s)\n", FUNC4(base), FUNC4(local),
	       FUNC4(remote));

	changes = FUNC1(o, base, remote, &num_changes);
	FUNC0(o, changes, num_changes, base, local);

	conflicts = FUNC3(o, changes, &num_changes, t);
	FUNC2(changes);

	if (o->verbosity >= 4)
		FUNC5(t->dirty ?
		       "Merge result: %i unmerged notes and a dirty notes tree\n" :
		       "Merge result: %i unmerged notes and a clean notes tree\n",
		       conflicts);

	return conflicts ? -1 : 1;
}