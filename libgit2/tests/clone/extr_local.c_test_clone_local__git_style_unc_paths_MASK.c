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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_clone_options ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char const*) ; 

void FUNC11(void)
{
#ifdef GIT_WIN32
	git_repository *repo;
	git_remote *remote;
	git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
	git_buf git_unc = GIT_BUF_INIT;

	/* we use a fixture path because it needs to exist for us to want to clone */
	const char *path = cl_fixture("testrepo.git");

	cl_git_pass(git_style_unc_path(&git_unc, "localhost", path));

	cl_git_pass(git_clone(&repo, git_unc.ptr, "./clone.git", &opts));
	cl_git_pass(git_remote_lookup(&remote, repo, "origin"));

	cl_assert_equal_s(git_unc.ptr, git_remote_url(remote));

	git_remote_free(remote);
	git_repository_free(repo);
	git_buf_dispose(&git_unc);

	cl_git_pass(git_futils_rmdir_r("./clone.git", NULL, GIT_RMDIR_REMOVE_FILES));
#endif
}