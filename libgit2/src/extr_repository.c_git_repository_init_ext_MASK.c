#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int flags; scalar_t__ origin_url; scalar_t__ initial_head; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_repository_init_options ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int GIT_REPOSITORY_INIT_BARE ; 
 int GIT_REPOSITORY_INIT_NO_REINIT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_INIT_OPTIONS_VERSION ; 
 int GIT_REPOSITORY_INIT__IS_REINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC11 (TYPE_2__*,TYPE_2__*,char const*,TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_2__*) ; 

int FUNC14(
	git_repository **out,
	const char *given_repo,
	git_repository_init_options *opts)
{
	git_buf repo_path = GIT_BUF_INIT, wd_path = GIT_BUF_INIT,
		common_path = GIT_BUF_INIT, head_path = GIT_BUF_INIT;
	const char *wd;
	int error;

	FUNC1(out && given_repo && opts);

	FUNC0(opts, GIT_REPOSITORY_INIT_OPTIONS_VERSION, "git_repository_init_options");

	if ((error = FUNC11(&repo_path, &wd_path, given_repo, opts)) < 0)
		goto out;

	wd = (opts->flags & GIT_REPOSITORY_INIT_BARE) ? NULL : FUNC2(&wd_path);

	if (FUNC13(&repo_path, &common_path)) {
		if ((opts->flags & GIT_REPOSITORY_INIT_NO_REINIT) != 0) {
			FUNC5(GIT_ERROR_REPOSITORY,
				"attempt to reinitialize '%s'", given_repo);
			error = GIT_EEXISTS;
			goto out;
		}

		opts->flags |= GIT_REPOSITORY_INIT__IS_REINIT;

		if ((error = FUNC9(repo_path.ptr, wd, opts->flags, opts->mode)) < 0)
			goto out;

		/* TODO: reinitialize the templates */
	} else {
		if ((error = FUNC12(repo_path.ptr, wd, opts)) < 0 ||
		    (error = FUNC9(repo_path.ptr, wd, opts->flags, opts->mode)) < 0 ||
		    (error = FUNC4(&head_path, repo_path.ptr, GIT_HEAD_FILE)) < 0)
			goto out;

		/*
		 * Only set the new HEAD if the file does not exist already via
		 * a template or if the caller has explicitly supplied an
		 * initial HEAD value.
		 */
		if ((!FUNC6(head_path.ptr) || opts->initial_head) &&
		    (error = FUNC7(repo_path.ptr, opts->initial_head)) < 0)
			goto out;
	}

	if ((error = FUNC8(out, repo_path.ptr)) < 0)
		goto out;

	if (opts->origin_url &&
	    (error = FUNC10(*out, opts->origin_url)) < 0)
		goto out;

out:
	FUNC3(&head_path);
	FUNC3(&common_path);
	FUNC3(&repo_path);
	FUNC3(&wd_path);

	return error;
}