#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_20__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_17__ {int /*<<< orphan*/  ign_global; TYPE_7__ dir; int /*<<< orphan*/  ign_internal; int /*<<< orphan*/  dir_root; int /*<<< orphan*/  ignore_case; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ git_ignores ;
struct TYPE_18__ {char* ptr; } ;
typedef  TYPE_2__ git_buf ;
struct TYPE_19__ {int /*<<< orphan*/ * cfg_excl_file; } ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_IGNORECASE ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/ * GIT_IGNORE_FILE_INREPO ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_7__*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_2__*,char const*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_7__*,char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  push_one_ignore ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 

int FUNC19(
	git_repository *repo,
	const char *path,
	git_ignores *ignores)
{
	int error = 0;
	const char *workdir = FUNC15(repo);
	git_buf infopath = GIT_BUF_INIT;

	FUNC0(repo && ignores && path);

	FUNC16(ignores, 0, sizeof(*ignores));
	ignores->repo = repo;

	/* Read the ignore_case flag */
	if ((error = FUNC12(
			&ignores->ignore_case, repo, GIT_CONFIGMAP_IGNORECASE)) < 0)
		goto cleanup;

	if ((error = FUNC3(repo)) < 0)
		goto cleanup;

	/* given a unrooted path in a non-bare repo, resolve it */
	if (workdir && FUNC9(path) < 0) {
		git_buf local = GIT_BUF_INIT;

		if ((error = FUNC7(&local, path)) < 0 ||
		    (error = FUNC8(&local, 0)) < 0 ||
		    (error = FUNC10(&local)) < 0 ||
		    (error = FUNC5(&ignores->dir, workdir, local.ptr)) < 0)
		{;} /* Nothing, we just want to stop on the first error */
		FUNC4(&local);
	} else {
		error = FUNC5(&ignores->dir, path, "");
	}
	if (error < 0)
		goto cleanup;

	if (workdir && !FUNC2(ignores->dir.ptr, workdir))
		ignores->dir_root = FUNC18(workdir);

	/* set up internals */
	if ((error = FUNC1(&ignores->ign_internal, repo)) < 0)
		goto cleanup;

	/* load .gitignore up the path */
	if (workdir != NULL) {
		error = FUNC11(
			&ignores->dir, workdir, push_one_ignore, ignores);
		if (error < 0)
			goto cleanup;
	}

	/* load .git/info/exclude if possible */
	if ((error = FUNC14(&infopath, repo, GIT_REPOSITORY_ITEM_INFO)) < 0 ||
		(error = FUNC17(ignores, &ignores->ign_global, infopath.ptr, GIT_IGNORE_FILE_INREPO)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto cleanup;
		error = 0;
	}

	/* load core.excludesfile */
	if (FUNC13(repo)->cfg_excl_file != NULL)
		error = FUNC17(
			ignores, &ignores->ign_global, NULL,
			FUNC13(repo)->cfg_excl_file);

cleanup:
	FUNC4(&infopath);
	if (error < 0)
		FUNC6(ignores);

	return error;
}