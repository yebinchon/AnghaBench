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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(
	git_oid *id, git_repository *repo, const char *path)
{
	int error;
	git_buf full_path = GIT_BUF_INIT;
	const char *workdir, *hintpath;

	if ((error = FUNC4(&full_path, path, NULL)) < 0) {
		FUNC3(&full_path);
		return error;
	}

	hintpath = FUNC2(&full_path);
	workdir  = FUNC5(repo);

	if (workdir && !FUNC0(hintpath, workdir))
		hintpath += FUNC6(workdir);

	error = FUNC1(
		id, NULL, repo, FUNC2(&full_path), hintpath, 0, true);

	FUNC3(&full_path);
	return error;
}