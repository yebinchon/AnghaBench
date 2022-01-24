#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  path; scalar_t__ name; } ;
typedef  TYPE_1__ git_submodule ;
struct TYPE_23__ {int /*<<< orphan*/ * submodule_cache; scalar_t__ is_bare; } ;
typedef  TYPE_2__ git_repository ;
typedef  int /*<<< orphan*/  git_config_backend ;
struct TYPE_24__ {char* ptr; int size; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_25__ {char* path; scalar_t__ name; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_4__ fbp_data ;

/* Variables and functions */
 int /*<<< orphan*/  DOT_GIT ; 
 int /*<<< orphan*/  GITMODULES_EXISTING ; 
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int GIT_SUBMODULE_STATUS_IN_WD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  find_by_path ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (unsigned int*,TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_1__**,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int,char const*) ; 

int FUNC19(
	git_submodule **out, /* NULL if user only wants to test existence */
	git_repository *repo,
	const char *name)    /* trailing slash is allowed */
{
	int error;
	unsigned int location;
	git_submodule *sm;

	FUNC1(repo && name);

	if (repo->is_bare) {
		FUNC9(GIT_ERROR_SUBMODULE, "cannot get submodules without a working tree");
		return -1;
	}

	if (repo->submodule_cache != NULL) {
		if ((sm = FUNC12(repo->submodule_cache, name)) != NULL) {
			if (out) {
				*out = sm;
				FUNC0(*out);
			}
			return 0;
		}
	}

	if ((error = FUNC17(&sm, repo, name)) < 0)
		return error;

	if ((error = FUNC15(sm, false)) < 0) {
		FUNC13(sm);
		return error;
	}

	if ((error = FUNC14(&location, sm)) < 0) {
		FUNC13(sm);
		return error;
	}

	/* If it's not configured or we're looking by path  */
	if (location == 0 || location == GIT_SUBMODULE_STATUS_IN_WD) {
		git_config_backend *mods;
		const char *pattern = "submodule\\..*\\.path";
		git_buf path = GIT_BUF_INIT;
		fbp_data data = { NULL, NULL };

		FUNC6(&path, name);
		while (path.ptr[path.size-1] == '/') {
			path.ptr[--path.size] = '\0';
		}
		data.path = path.ptr;

		mods = FUNC16(repo, GITMODULES_EXISTING);

		if (mods)
			error = FUNC7(mods, pattern, find_by_path, &data);

		FUNC8(mods);

		if (error < 0) {
			FUNC13(sm);
			FUNC4(&path);
			return error;
		}

		if (data.name) {
			FUNC2(sm->name);
			sm->name = data.name;
			sm->path = FUNC3(&path);

			/* Try to load again with the right name */
			if ((error = FUNC15(sm, false)) < 0) {
				FUNC13(sm);
				return error;
			}
		}

		FUNC4(&path);
	}

	if ((error = FUNC14(&location, sm)) < 0) {
		FUNC13(sm);
		return error;
	}

	/* If we still haven't found it, do the WD check */
	if (location == 0 || location == GIT_SUBMODULE_STATUS_IN_WD) {
		FUNC13(sm);
		error = GIT_ENOTFOUND;

		/* If it's not configured, we still check if there's a repo at the path */
		if (FUNC11(repo)) {
			git_buf path = GIT_BUF_INIT;
			if (FUNC5(&path,
					  '/', FUNC11(repo), name, DOT_GIT) < 0)
				return -1;

			if (FUNC10(path.ptr))
				error = GIT_EEXISTS;

			FUNC4(&path);
		}

		FUNC18(error, name);
		return error;
	}

	if (out)
		*out = sm;
	else
		FUNC13(sm);

	return 0;
}