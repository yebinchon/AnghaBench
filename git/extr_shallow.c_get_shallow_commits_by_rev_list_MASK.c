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
struct rev_info {int dummy; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {struct object object; struct commit_list* parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct commit*) ; 
 scalar_t__ FUNC7 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ save_commit_buffer ; 
 int /*<<< orphan*/  FUNC9 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  show_commit ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC10 (struct rev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct commit_list**) ; 

struct commit_list *FUNC11(int ac, const char **av,
						    int shallow_flag,
						    int not_shallow_flag)
{
	struct commit_list *result = NULL, *p;
	struct commit_list *not_shallow_list = NULL;
	struct rev_info revs;
	int both_flags = shallow_flag | not_shallow_flag;

	/*
	 * SHALLOW (excluded) and NOT_SHALLOW (included) should not be
	 * set at this point. But better be safe than sorry.
	 */
	FUNC0(both_flags);

	FUNC4(the_repository); /* make sure shallows are read */

	FUNC8(the_repository, &revs, NULL);
	save_commit_buffer = 0;
	FUNC9(ac, av, &revs, NULL);

	if (FUNC7(&revs))
		FUNC2("revision walk setup failed");
	FUNC10(&revs, show_commit, NULL, &not_shallow_list);

	if (!not_shallow_list)
		FUNC2("no commits selected for shallow requests");

	/* Mark all reachable commits as NOT_SHALLOW */
	for (p = not_shallow_list; p; p = p->next)
		p->item->object.flags |= not_shallow_flag;

	/*
	 * mark border commits SHALLOW + NOT_SHALLOW.
	 * We cannot clear NOT_SHALLOW right now. Imagine border
	 * commit A is processed first, then commit B, whose parent is
	 * A, later. If NOT_SHALLOW on A is cleared at step 1, B
	 * itself is considered border at step 2, which is incorrect.
	 */
	for (p = not_shallow_list; p; p = p->next) {
		struct commit *c = p->item;
		struct commit_list *parent;

		if (FUNC6(c))
			FUNC2("unable to parse commit %s",
			    FUNC5(&c->object.oid));

		for (parent = c->parents; parent; parent = parent->next)
			if (!(parent->item->object.flags & not_shallow_flag)) {
				c->object.flags |= shallow_flag;
				FUNC1(c, &result);
				break;
			}
	}
	FUNC3(not_shallow_list);

	/*
	 * Now we can clean up NOT_SHALLOW on border commits. Having
	 * both flags set can confuse the caller.
	 */
	for (p = result; p; p = p->next) {
		struct object *o = &p->item->object;
		if ((o->flags & both_flags) == both_flags)
			o->flags &= ~not_shallow_flag;
	}
	return result;
}