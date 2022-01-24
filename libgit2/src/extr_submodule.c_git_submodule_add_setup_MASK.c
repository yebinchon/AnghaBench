#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config_backend ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  DOT_GIT ; 
 int /*<<< orphan*/  GITMODULES_CREATE ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC19 (int*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (TYPE_1__*,char*) ; 
 int FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 

int FUNC24(
	git_submodule **out,
	git_repository *repo,
	const char *url,
	const char *path,
	int use_gitlink)
{
	int error = 0;
	git_config_backend *mods = NULL;
	git_submodule *sm = NULL;
	git_buf name = GIT_BUF_INIT, real_url = GIT_BUF_INIT;
	git_repository *subrepo = NULL;
	bool path_occupied;

	FUNC0(repo && url && path);

	/* see if there is already an entry for this submodule */

	if (FUNC17(NULL, repo, path) < 0)
		FUNC8();
	else {
		FUNC9(GIT_ERROR_SUBMODULE,
			"attempt to add submodule '%s' that already exists", path);
		return GIT_EEXISTS;
	}

	/* validate and normalize path */

	if (FUNC1(path, FUNC14(repo)) == 0)
		path += FUNC21(FUNC14(repo));

	if (FUNC12(path) >= 0) {
		FUNC9(GIT_ERROR_SUBMODULE, "submodule path must be a relative path");
		error = -1;
		goto cleanup;
	}

	if ((error = FUNC19(&path_occupied, repo, path)) < 0)
		goto cleanup;

	if (path_occupied) {
		error = GIT_EEXISTS;
		goto cleanup;
	}

	/* update .gitmodules */

	if (!(mods = FUNC20(repo, GITMODULES_CREATE))) {
		FUNC9(GIT_ERROR_SUBMODULE,
			"adding submodules to a bare repository is not supported");
		return -1;
	}

	if ((error = FUNC5(&name, "submodule.%s.path", path)) < 0 ||
		(error = FUNC7(mods, name.ptr, path)) < 0)
		goto cleanup;

	if ((error = FUNC22(&name, "url")) < 0 ||
		(error = FUNC7(mods, name.ptr, url)) < 0)
		goto cleanup;

	FUNC2(&name);

	/* init submodule repository and add origin remote as needed */

	error = FUNC4(&name, FUNC14(repo), path);
	if (error < 0)
		goto cleanup;

	/* if the repo does not already exist, then init a new repo and add it.
	 * Otherwise, just add the existing repo.
	 */
	if (!(FUNC11(name.ptr) &&
		FUNC10(&name, DOT_GIT))) {

		/* resolve the actual URL to use */
		if ((error = FUNC18(&real_url, repo, url)) < 0)
			goto cleanup;

		 if ((error = FUNC23(&subrepo, repo, path, real_url.ptr, use_gitlink)) < 0)
			goto cleanup;
	}

	if ((error = FUNC17(&sm, repo, path)) < 0)
		goto cleanup;

	error = FUNC16(sm, false);

cleanup:
	if (error && sm) {
		FUNC15(sm);
		sm = NULL;
	}
	if (out != NULL)
		*out = sm;

	FUNC6(mods);
	FUNC13(subrepo);
	FUNC3(&real_url);
	FUNC3(&name);

	return error;
}