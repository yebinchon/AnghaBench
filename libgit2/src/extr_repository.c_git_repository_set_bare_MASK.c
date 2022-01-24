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
struct TYPE_5__ {int is_bare; int /*<<< orphan*/ * workdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ **,TYPE_1__*) ; 

int FUNC5(git_repository *repo)
{
	int error;
	git_config *config;

	FUNC0(repo);

	if (repo->is_bare)
		return 0;

	if ((error = FUNC4(&config, repo)) < 0)
		return error;

	if ((error = FUNC3(config, "core.bare", true)) < 0)
		return error;

	if ((error = FUNC2(config, "core.worktree", NULL, true, true)) < 0)
		return error;

	FUNC1(repo->workdir);
	repo->workdir = NULL;
	repo->is_bare = 1;

	return 0;
}