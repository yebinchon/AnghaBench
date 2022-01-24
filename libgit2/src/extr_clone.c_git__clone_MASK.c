#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int (* git_repository_create_cb ) (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_error_state ;
struct TYPE_12__ {int (* repository_cb ) (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ local; int /*<<< orphan*/  checkout_branch; int /*<<< orphan*/  checkout_opts; int /*<<< orphan*/  fetch_opts; int /*<<< orphan*/  repository_cb_payload; int /*<<< orphan*/  bare; } ;
typedef  TYPE_2__ git_clone_options ;

/* Variables and functions */
 scalar_t__ GIT_CLONE_LOCAL_NO_LINKS ; 
 TYPE_2__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CLONE_OPTIONS_VERSION ; 
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  GIT_RMDIR_SKIP_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_2__ const*,int) ; 

__attribute__((used)) static int FUNC16(
	git_repository **out,
	const char *url,
	const char *local_path,
	const git_clone_options *_options,
	int use_existing)
{
	int error = 0;
	git_repository *repo = NULL;
	git_remote *origin;
	git_clone_options options = GIT_CLONE_OPTIONS_INIT;
	uint32_t rmdir_flags = GIT_RMDIR_REMOVE_FILES;
	git_repository_create_cb repository_cb;

	FUNC1(out && url && local_path);

	if (_options)
		FUNC15(&options, _options, sizeof(git_clone_options));

	FUNC0(&options, GIT_CLONE_OPTIONS_VERSION, "git_clone_options");

	/* Only clone to a new directory or an empty directory */
	if (FUNC11(local_path) && !use_existing && !FUNC12(local_path)) {
		FUNC7(GIT_ERROR_INVALID,
			"'%s' exists and is not an empty directory", local_path);
		return GIT_EEXISTS;
	}

	/* Only remove the root directory on failure if we create it */
	if (FUNC11(local_path))
		rmdir_flags |= GIT_RMDIR_SKIP_ROOT;

	if (options.repository_cb)
		repository_cb = options.repository_cb;
	else
		repository_cb = default_repository_create;

	if ((error = repository_cb(&repo, local_path, options.bare, options.repository_cb_payload)) < 0)
		return error;

	if (!(error = FUNC4(&origin, repo, url, &options))) {
		int clone_local = FUNC6(url, options.local);
		int link = options.local != GIT_CLONE_LOCAL_NO_LINKS;

		if (clone_local == 1)
			error = FUNC3(
				repo, origin, &options.fetch_opts, &options.checkout_opts,
				options.checkout_branch, link);
		else if (clone_local == 0)
			error = FUNC2(
				repo, origin, &options.fetch_opts, &options.checkout_opts,
				options.checkout_branch);
		else
			error = -1;

		FUNC13(origin);
	}

	if (error != 0) {
		git_error_state last_error = {0};
		FUNC8(&last_error, error);

		FUNC14(repo);
		repo = NULL;

		(void)FUNC10(local_path, NULL, rmdir_flags);

		FUNC9(&last_error);
	}

	*out = repo;
	return error;
}