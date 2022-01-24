#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_6__ {int /*<<< orphan*/  download_tags; scalar_t__ update_fetchhead; } ;
typedef  TYPE_1__ git_fetch_options ;
typedef  int /*<<< orphan*/  git_checkout_options ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__ const*,int) ; 

__attribute__((used)) static int FUNC12(git_repository *repo, git_remote *_remote, const git_fetch_options *opts, const git_checkout_options *co_opts, const char *branch)
{
	int error;
	git_buf reflog_message = GIT_BUF_INIT;
	git_fetch_options fetch_opts;
	git_remote *remote;

	FUNC0(repo && _remote);

	if (!FUNC10(repo)) {
		FUNC5(GIT_ERROR_INVALID, "the repository is not empty");
		return -1;
	}

	if ((error = FUNC6(&remote, _remote)) < 0)
		return error;

	FUNC11(&fetch_opts, opts, sizeof(git_fetch_options));
	fetch_opts.update_fetchhead = 0;
	fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_ALL;
	FUNC4(&reflog_message, "clone: from %s", FUNC9(remote));

	if ((error = FUNC7(remote, NULL, &fetch_opts, FUNC2(&reflog_message))) != 0)
		goto cleanup;

	error = FUNC1(repo, remote, co_opts, branch, FUNC2(&reflog_message));

cleanup:
	FUNC8(remote);
	FUNC3(&reflog_message);

	return error;
}