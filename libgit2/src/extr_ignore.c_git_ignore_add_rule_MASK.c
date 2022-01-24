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
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 

int FUNC3(git_repository *repo, const char *rules)
{
	int error;
	git_attr_file *ign_internal = NULL;

	if ((error = FUNC0(&ign_internal, repo)) < 0)
		return error;

	error = FUNC2(repo, ign_internal, rules, false);
	FUNC1(ign_internal);

	return error;
}