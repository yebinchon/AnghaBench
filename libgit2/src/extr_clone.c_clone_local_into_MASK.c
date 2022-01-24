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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_fetch_options ;
typedef  int /*<<< orphan*/  git_checkout_options ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_CPDIR_LINK_FILES ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_OBJECT_DIR_MODE ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_OBJECTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(git_repository *repo, git_remote *remote, const git_fetch_options *fetch_opts, const git_checkout_options *co_opts, const char *branch, int link)
{
	int error, flags;
	git_repository *src;
	git_buf src_odb = GIT_BUF_INIT, dst_odb = GIT_BUF_INIT, src_path = GIT_BUF_INIT;
	git_buf reflog_message = GIT_BUF_INIT;

	FUNC0(repo && remote);

	if (!FUNC12(repo)) {
		FUNC6(GIT_ERROR_INVALID, "the repository is not empty");
		return -1;
	}

	/*
	 * Let's figure out what path we should use for the source
	 * repo, if it's not rooted, the path should be relative to
	 * the repository's worktree/gitdir.
	 */
	if ((error = FUNC8(&src_path, FUNC10(remote))) < 0)
		return error;

	/* Copy .git/objects/ from the source to the target */
	if ((error = FUNC14(&src, FUNC3(&src_path))) < 0) {
		FUNC4(&src_path);
		return error;
	}

	if (FUNC13(&src_odb, src, GIT_REPOSITORY_ITEM_OBJECTS) < 0
		|| FUNC13(&dst_odb, repo, GIT_REPOSITORY_ITEM_OBJECTS) < 0) {
		error = -1;
		goto cleanup;
	}

	flags = 0;
	if (FUNC1(FUNC15(src), FUNC15(repo), link))
		flags |= GIT_CPDIR_LINK_FILES;

	error = FUNC7(FUNC3(&src_odb), FUNC3(&dst_odb),
				flags, GIT_OBJECT_DIR_MODE);

	/*
	 * can_link() doesn't catch all variations, so if we hit an
	 * error and did want to link, let's try again without trying
	 * to link.
	 */
	if (error < 0 && link) {
		flags &= ~GIT_CPDIR_LINK_FILES;
		error = FUNC7(FUNC3(&src_odb), FUNC3(&dst_odb),
					flags, GIT_OBJECT_DIR_MODE);
	}

	if (error < 0)
		goto cleanup;

	FUNC5(&reflog_message, "clone: from %s", FUNC10(remote));

	if ((error = FUNC9(remote, NULL, fetch_opts, FUNC3(&reflog_message))) != 0)
		goto cleanup;

	error = FUNC2(repo, remote, co_opts, branch, FUNC3(&reflog_message));

cleanup:
	FUNC4(&reflog_message);
	FUNC4(&src_path);
	FUNC4(&src_odb);
	FUNC4(&dst_odb);
	FUNC11(src);
	return error;
}