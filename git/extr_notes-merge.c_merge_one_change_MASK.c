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
struct notes_merge_pair {int /*<<< orphan*/  remote; int /*<<< orphan*/  obj; } ;
struct notes_merge_options {int strategy; int verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  NOTES_MERGE_RESOLVE_CAT_SORT_UNIQ 132 
#define  NOTES_MERGE_RESOLVE_MANUAL 131 
#define  NOTES_MERGE_RESOLVE_OURS 130 
#define  NOTES_MERGE_RESOLVE_THEIRS 129 
#define  NOTES_MERGE_RESOLVE_UNION 128 
 int /*<<< orphan*/  FUNC1 (struct notes_tree*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  combine_notes_cat_sort_uniq ; 
 int /*<<< orphan*/  combine_notes_concatenate ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct notes_merge_options*,struct notes_merge_pair*,struct notes_tree*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct notes_merge_options *o,
			    struct notes_merge_pair *p, struct notes_tree *t)
{
	/*
	 * Return 0 if change is successfully resolved (stored in notes_tree).
	 * Return 1 is change results in a conflict (NOT stored in notes_tree,
	 * but instead written to NOTES_MERGE_WORKTREE with conflict markers).
	 */
	switch (o->strategy) {
	case NOTES_MERGE_RESOLVE_MANUAL:
		return FUNC3(o, p, t);
	case NOTES_MERGE_RESOLVE_OURS:
		if (o->verbosity >= 2)
			FUNC5("Using local notes for %s\n",
						FUNC4(&p->obj));
		/* nothing to do */
		return 0;
	case NOTES_MERGE_RESOLVE_THEIRS:
		if (o->verbosity >= 2)
			FUNC5("Using remote notes for %s\n",
						FUNC4(&p->obj));
		if (FUNC1(t, &p->obj, &p->remote, combine_notes_overwrite))
			FUNC0("combine_notes_overwrite failed");
		return 0;
	case NOTES_MERGE_RESOLVE_UNION:
		if (o->verbosity >= 2)
			FUNC5("Concatenating local and remote notes for %s\n",
							FUNC4(&p->obj));
		if (FUNC1(t, &p->obj, &p->remote, combine_notes_concatenate))
			FUNC2("failed to concatenate notes "
			    "(combine_notes_concatenate)");
		return 0;
	case NOTES_MERGE_RESOLVE_CAT_SORT_UNIQ:
		if (o->verbosity >= 2)
			FUNC5("Concatenating unique lines in local and remote "
				"notes for %s\n", FUNC4(&p->obj));
		if (FUNC1(t, &p->obj, &p->remote, combine_notes_cat_sort_uniq))
			FUNC2("failed to concatenate notes "
			    "(combine_notes_cat_sort_uniq)");
		return 0;
	}
	FUNC2("Unknown strategy (%i).", o->strategy);
}