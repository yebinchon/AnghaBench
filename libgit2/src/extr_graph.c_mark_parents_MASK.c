#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_pqueue ;
struct TYPE_8__ {unsigned int flags; unsigned int out_degree; struct TYPE_8__** parents; } ;
typedef  TYPE_1__ git_commit_list_node ;
typedef  int /*<<< orphan*/  git_commit_list ;

/* Variables and functions */
 unsigned int PARENT1 ; 
 unsigned int PARENT2 ; 
 unsigned int RESULT ; 
 unsigned int STALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  git_commit_list_time_cmp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(git_revwalk *walk, git_commit_list_node *one,
	git_commit_list_node *two)
{
	unsigned int i;
	git_commit_list *roots = NULL;
	git_pqueue list;

	/* if the commit is repeated, we have a our merge base already */
	if (one == two) {
		one->flags |= PARENT1 | PARENT2 | RESULT;
		return 0;
	}

	if (FUNC4(&list, 0, 2, git_commit_list_time_cmp) < 0)
		return -1;

	if (FUNC2(walk, one) < 0)
		goto on_error;
	one->flags |= PARENT1;
	if (FUNC5(&list, one) < 0)
		goto on_error;

	if (FUNC2(walk, two) < 0)
		goto on_error;
	two->flags |= PARENT2;
	if (FUNC5(&list, two) < 0)
		goto on_error;

	/* as long as there are non-STALE commits */
	while (FUNC7(&list, roots)) {
		git_commit_list_node *commit = FUNC6(&list);
		unsigned int flags;

		if (commit == NULL)
			break;

		flags = commit->flags & (PARENT1 | PARENT2 | STALE);
		if (flags == (PARENT1 | PARENT2)) {
			if (!(commit->flags & RESULT))
				commit->flags |= RESULT;
			/* we mark the parents of a merge stale */
			flags |= STALE;
		}

		for (i = 0; i < commit->out_degree; i++) {
			git_commit_list_node *p = commit->parents[i];
			if ((p->flags & flags) == flags)
				continue;

			if (FUNC2(walk, p) < 0)
				goto on_error;

			p->flags |= flags;
			if (FUNC5(&list, p) < 0)
				goto on_error;
		}

		/* Keep track of root commits, to make sure the path gets marked */
		if (commit->out_degree == 0) {
			if (FUNC1(commit, &roots) == NULL)
				goto on_error;
		}
	}

	FUNC0(&roots);
	FUNC3(&list);
	return 0;

on_error:
	FUNC0(&roots);
	FUNC3(&list);
	return -1;
}