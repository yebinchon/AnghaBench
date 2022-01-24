#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEBUF_CREATE_LEADING_DIRS ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_MSG_FILE ; 
 int /*<<< orphan*/  GIT_REVERT_FILE_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC6(
	git_repository *repo,
	const char *commit_oidstr,
	const char *commit_msgline)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	git_buf file_path = GIT_BUF_INIT;
	int error = 0;

	if ((error = FUNC1(&file_path, repo->gitdir, GIT_MERGE_MSG_FILE)) < 0 ||
		(error = FUNC4(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_REVERT_FILE_MODE)) < 0 ||
		(error = FUNC5(&file, "Revert \"%s\"\n\nThis reverts commit %s.\n",
		commit_msgline, commit_oidstr)) < 0)
		goto cleanup;

	error = FUNC3(&file);

cleanup:
	if (error < 0)
		FUNC2(&file);

	FUNC0(&file_path);

	return error;
}