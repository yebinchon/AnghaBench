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
typedef  scalar_t__ git_rebase_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_REBASE ; 
 scalar_t__ GIT_REBASE_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(git_repository *repo)
{
	int error;
	git_rebase_type_t type;

	if ((error = FUNC1(&type, NULL, repo)) < 0)
		return error;

	if (type != GIT_REBASE_TYPE_NONE) {
		FUNC0(GIT_ERROR_REBASE, "there is an existing rebase in progress");
		return -1;
	}

	return 0;
}