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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  resolved; int /*<<< orphan*/  conflicts; int /*<<< orphan*/  staged; int /*<<< orphan*/  pool; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ git_merge_diff_list ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

git_merge_diff_list *FUNC4(git_repository *repo)
{
	git_merge_diff_list *diff_list = FUNC0(1, sizeof(git_merge_diff_list));

	if (diff_list == NULL)
		return NULL;

	diff_list->repo = repo;

	FUNC2(&diff_list->pool, 1);

	if (FUNC3(&diff_list->staged, 0, NULL) < 0 ||
		FUNC3(&diff_list->conflicts, 0, NULL) < 0 ||
		FUNC3(&diff_list->resolved, 0, NULL) < 0) {
		FUNC1(diff_list);
		return NULL;
	}

	return diff_list;
}