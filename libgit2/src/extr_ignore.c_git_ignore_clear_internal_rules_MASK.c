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
typedef  int /*<<< orphan*/  git_attr_file ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_IGNORE_DEFAULT_RULES ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(git_repository *repo)
{
	int error;
	git_attr_file *ign_internal;

	if ((error = FUNC0(&ign_internal, repo)) < 0)
		return error;

	if (!(error = FUNC1(ign_internal, true)))
		error = FUNC3(
				repo, ign_internal, GIT_IGNORE_DEFAULT_RULES, false);

	FUNC2(ign_internal);
	return error;
}