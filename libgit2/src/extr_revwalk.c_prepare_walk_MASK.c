#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int sorting; int (* get_next ) (TYPE_2__**,TYPE_1__*) ;int (* enqueue ) (TYPE_1__*,TYPE_2__*) ;int walking; TYPE_3__* iterator_reverse; TYPE_3__* iterator_rand; int /*<<< orphan*/  iterator_topo; scalar_t__ limited; TYPE_3__* user_input; int /*<<< orphan*/  did_push; } ;
typedef  TYPE_1__ git_revwalk ;
struct TYPE_21__ {int seen; scalar_t__ uninteresting; } ;
typedef  TYPE_2__ git_commit_list_node ;
struct TYPE_22__ {TYPE_2__* item; struct TYPE_22__* next; } ;
typedef  TYPE_3__ git_commit_list ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int GIT_SORT_REVERSE ; 
 int GIT_SORT_TIME ; 
 int GIT_SORT_TOPOLOGICAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,TYPE_3__**) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_3__**,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  revwalk_next_reverse ; 
 int /*<<< orphan*/  revwalk_next_toposort ; 
 int /*<<< orphan*/  revwalk_next_unsorted ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_2__**,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(git_revwalk *walk)
{
	int error = 0;
	git_commit_list *list, *commits = NULL;
	git_commit_list_node *next;

	/* If there were no pushes, we know that the walk is already over */
	if (!walk->did_push) {
		FUNC3();
		return GIT_ITEROVER;
	}

	for (list = walk->user_input; list; list = list->next) {
		git_commit_list_node *commit = list->item;
		if ((error = FUNC2(walk, commit)) < 0)
			return error;

		if (commit->uninteresting)
			FUNC5(commit);

		if (!commit->seen) {
			commit->seen = 1;
			FUNC1(commit, &commits);
		}
	}

	if (walk->limited && (error = FUNC4(&commits, walk, commits)) < 0)
		return error;

	if (walk->sorting & GIT_SORT_TOPOLOGICAL) {
		error = FUNC6(&walk->iterator_topo, walk, commits);
		FUNC0(&commits);

		if (error < 0)
			return error;

		walk->get_next = &revwalk_next_toposort;
	} else if (walk->sorting & GIT_SORT_TIME) {
		for (list = commits; list && !error; list = list->next)
			error = walk->enqueue(walk, list->item);

		FUNC0(&commits);

		if (error < 0)
			return error;
	} else {
		walk->iterator_rand = commits;
		walk->get_next = revwalk_next_unsorted;
	}

	if (walk->sorting & GIT_SORT_REVERSE) {

		while ((error = walk->get_next(&next, walk)) == 0)
			if (FUNC1(next, &walk->iterator_reverse) == NULL)
				return -1;

		if (error != GIT_ITEROVER)
			return error;

		walk->get_next = &revwalk_next_reverse;
	}

	walk->walking = 1;
	return 0;
}