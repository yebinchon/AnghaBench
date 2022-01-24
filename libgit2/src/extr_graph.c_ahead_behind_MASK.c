#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_pqueue ;
struct TYPE_6__ {int flags; int out_degree; struct TYPE_6__** parents; } ;
typedef  TYPE_1__ git_commit_list_node ;

/* Variables and functions */
 int PARENT1 ; 
 int PARENT2 ; 
 int RESULT ; 
 int /*<<< orphan*/  git_commit_list_time_cmp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(git_commit_list_node *one, git_commit_list_node *two,
	size_t *ahead, size_t *behind)
{
	git_commit_list_node *commit;
	git_pqueue pq;
	int error = 0, i;
	*ahead = 0;
	*behind = 0;

	if (FUNC1(&pq, 0, 2, git_commit_list_time_cmp) < 0)
		return -1;

	if ((error = FUNC2(&pq, one)) < 0 ||
		(error = FUNC2(&pq, two)) < 0)
		goto done;

	while ((commit = FUNC3(&pq)) != NULL) {
		if (commit->flags & RESULT ||
			(commit->flags & (PARENT1 | PARENT2)) == (PARENT1 | PARENT2))
			continue;
		else if (commit->flags & PARENT1)
			(*ahead)++;
		else if (commit->flags & PARENT2)
			(*behind)++;

		for (i = 0; i < commit->out_degree; i++) {
			git_commit_list_node *p = commit->parents[i];
			if ((error = FUNC2(&pq, p)) < 0)
				goto done;
		}
		commit->flags |= RESULT;
	}

done:
	FUNC0(&pq);
	return error;
}