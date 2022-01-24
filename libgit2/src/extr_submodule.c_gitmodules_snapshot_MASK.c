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
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_MODULES_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(git_config **snap, git_repository *repo)
{
	const char *workdir = FUNC5(repo);
	git_config *mods = NULL;
	git_buf path = GIT_BUF_INIT;
	int error;

	if (!workdir)
		return GIT_ENOTFOUND;

	if ((error = FUNC1(&path, workdir, GIT_MODULES_FILE)) < 0)
		return error;

	if ((error = FUNC3(&mods, path.ptr)) < 0)
		goto cleanup;
	FUNC0(&path);

	if ((error = FUNC4(snap, mods)) < 0)
		goto cleanup;

	error = 0;

cleanup:
	if (mods)
		FUNC2(mods);
	FUNC0(&path);

	return error;
}