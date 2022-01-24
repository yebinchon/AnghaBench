#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  is_bare; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ **,TYPE_2__*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  repo_reinit_submodule_fs ; 

int FUNC8(git_repository *repo, int recurse)
{
	int error = 0;
	git_buf path = GIT_BUF_INIT;
	git_config *config = NULL;
	const char *repo_dir = FUNC3(repo);

	if (!(error = FUNC7(&config, &path, repo, repo_dir)))
		error = FUNC6(
			config, path.ptr, repo_dir, FUNC4(repo), true);

	FUNC1(config);
	FUNC0(&path);

	FUNC2(repo);

	if (!repo->is_bare && recurse)
		(void)FUNC5(repo, repo_reinit_submodule_fs, NULL);

	return error;
}