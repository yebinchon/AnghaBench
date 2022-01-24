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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  branch_equals ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const git_reference *branch)
{
	git_repository *repo;
	int flags = 0;

	FUNC0(branch);

	if (!FUNC1(branch))
		return 0;

	repo = FUNC2(branch);

	if (FUNC4(repo))
		flags |= GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO;

	return FUNC3(repo, branch_equals, flags, (void *) branch) == 1;
}