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
typedef  int /*<<< orphan*/  git_branch_t ;
typedef  int /*<<< orphan*/  git_branch_iterator ;
struct TYPE_5__ {int /*<<< orphan*/  iter; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ branch_iter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(
	git_branch_iterator **out,
	git_repository *repo,
	git_branch_t list_flags)
{
	branch_iter *iter;

	iter = FUNC1(1, sizeof(branch_iter));
	FUNC0(iter);

	iter->flags = list_flags;

	if (FUNC3(&iter->iter, repo) < 0) {
		FUNC2(iter);
		return -1;
	}

	*out = (git_branch_iterator *) iter;

	return 0;
}