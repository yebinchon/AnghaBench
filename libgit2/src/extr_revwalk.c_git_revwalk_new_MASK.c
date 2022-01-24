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
struct TYPE_6__ {int /*<<< orphan*/  odb; int /*<<< orphan*/ * repo; int /*<<< orphan*/ * enqueue; int /*<<< orphan*/ * get_next; int /*<<< orphan*/  commit_pool; int /*<<< orphan*/  iterator_time; int /*<<< orphan*/  commits; } ;
typedef  TYPE_1__ git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  git_commit_list_time_cmp ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  revwalk_enqueue_unsorted ; 
 int /*<<< orphan*/  revwalk_next_unsorted ; 

int FUNC7(git_revwalk **revwalk_out, git_repository *repo)
{
	git_revwalk *walk = FUNC1(1, sizeof(git_revwalk));
	FUNC0(walk);

	if (FUNC2(&walk->commits) < 0)
		return -1;

	if (FUNC4(&walk->iterator_time, 0, 8, git_commit_list_time_cmp) < 0)
		return -1;

	FUNC3(&walk->commit_pool, COMMIT_ALLOC);
	walk->get_next = &revwalk_next_unsorted;
	walk->enqueue = &revwalk_enqueue_unsorted;

	walk->repo = repo;

	if (FUNC5(&walk->odb, repo) < 0) {
		FUNC6(walk);
		return -1;
	}

	*revwalk_out = walk;
	return 0;
}