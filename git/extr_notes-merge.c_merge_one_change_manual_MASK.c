#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct notes_tree {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  hash; } ;
struct notes_merge_pair {TYPE_1__ obj; TYPE_1__ remote; TYPE_1__ local; TYPE_1__ base; } ;
struct notes_merge_options {char* local_ref; char* remote_ref; int verbosity; int /*<<< orphan*/  commit_msg; int /*<<< orphan*/  has_worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct notes_merge_options*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct notes_merge_options*,struct notes_merge_pair*) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct notes_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct notes_merge_options *o,
				   struct notes_merge_pair *p,
				   struct notes_tree *t)
{
	const char *lref = o->local_ref ? o->local_ref : "local version";
	const char *rref = o->remote_ref ? o->remote_ref : "remote version";

	FUNC9("\t\t\tmerge_one_change_manual(obj = %.7s, base = %.7s, "
	       "local = %.7s, remote = %.7s)\n",
	       FUNC4(&p->obj), FUNC4(&p->base),
	       FUNC4(&p->local), FUNC4(&p->remote));

	/* add "Conflicts:" section to commit message first time through */
	if (!o->has_worktree)
		FUNC8(&(o->commit_msg), "\n\nConflicts:\n");

	FUNC7(&(o->commit_msg), "\t%s\n", FUNC4(&p->obj));

	if (o->verbosity >= 2)
		FUNC5("Auto-merging notes for %s\n", FUNC4(&p->obj));
	FUNC1(o);
	if (FUNC2(&p->local)) {
		/* D/F conflict, checkout p->remote */
		FUNC0(!FUNC2(&p->remote));
		if (o->verbosity >= 1)
			FUNC5("CONFLICT (delete/modify): Notes for object %s "
				"deleted in %s and modified in %s. Version from %s "
				"left in tree.\n",
				FUNC4(&p->obj), lref, rref, rref);
		FUNC10(&p->obj, &p->remote);
	} else if (FUNC2(&p->remote)) {
		/* D/F conflict, checkout p->local */
		FUNC0(!FUNC2(&p->local));
		if (o->verbosity >= 1)
			FUNC5("CONFLICT (delete/modify): Notes for object %s "
				"deleted in %s and modified in %s. Version from %s "
				"left in tree.\n",
				FUNC4(&p->obj), rref, lref, lref);
		FUNC10(&p->obj, &p->local);
	} else {
		/* "regular" conflict, checkout result of ll_merge() */
		const char *reason = "content";
		if (FUNC2(&p->base))
			reason = "add/add";
		FUNC0(!FUNC2(&p->local));
		FUNC0(!FUNC2(&p->remote));
		if (o->verbosity >= 1)
			FUNC5("CONFLICT (%s): Merge conflict in notes for "
				"object %s\n", reason,
				FUNC4(&p->obj));
		FUNC3(o, p);
	}

	FUNC9("\t\t\tremoving from partial merge result\n");
	FUNC6(t, p->obj.hash);

	return 1;
}