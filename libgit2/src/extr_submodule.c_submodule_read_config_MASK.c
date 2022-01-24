#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ignore; int /*<<< orphan*/  ignore_default; void* name; int /*<<< orphan*/  fetch_recurse; int /*<<< orphan*/  fetch_recurse_default; int /*<<< orphan*/  update; int /*<<< orphan*/  update_default; void* branch; void* url; void* path; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  GIT_SUBMODULE_STATUS_IN_CONFIG ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (void*,char const*) ; 

__attribute__((used)) static int FUNC10(git_submodule *sm, git_config *cfg)
{
	git_buf key = GIT_BUF_INIT;
	const char *value;
	int error, in_config = 0;

	/*
	 * TODO: Look up path in index and if it is present but not a GITLINK
	 * then this should be deleted (at least to match git's behavior)
	 */

	if ((error = FUNC1(&value, cfg, &key, sm->name, "path")) == 0) {
		in_config = 1;
		/* We would warn here if we had that API */
		if (!FUNC8(value)) {
	/*
	 * TODO: if case insensitive filesystem, then the following strcmp
	 * should be strcasecmp
	 */
			if (FUNC9(sm->name, value) != 0) {
				if (sm->path != sm->name)
					FUNC2(sm->path);
				sm->path = FUNC3(value);
				FUNC0(sm->path);
			}

		}
	} else if (error != GIT_ENOTFOUND) {
		goto cleanup;
	}

	if ((error = FUNC1(&value, cfg, &key, sm->name, "url")) == 0) {
		/* We would warn here if we had that API */
		if (!FUNC8(value)) {
			in_config = 1;
			sm->url = FUNC3(value);
			FUNC0(sm->url);
		}
	} else if (error != GIT_ENOTFOUND) {
		goto cleanup;
	}

	if ((error = FUNC1(&value, cfg, &key, sm->name, "branch")) == 0) {
		in_config = 1;
		sm->branch = FUNC3(value);
		FUNC0(sm->branch);
	} else if (error != GIT_ENOTFOUND) {
		goto cleanup;
	}

	if ((error = FUNC1(&value, cfg, &key, sm->name, "update")) == 0) {
		in_config = 1;
		if ((error = FUNC7(&sm->update, value)) < 0)
			goto cleanup;
		sm->update_default = sm->update;
	} else if (error != GIT_ENOTFOUND) {
		goto cleanup;
	}

	if ((error = FUNC1(&value, cfg, &key, sm->name, "fetchRecurseSubmodules")) == 0) {
		in_config = 1;
		if ((error = FUNC6(&sm->fetch_recurse, value)) < 0)
			goto cleanup;
		sm->fetch_recurse_default = sm->fetch_recurse;
	} else if (error != GIT_ENOTFOUND) {
		goto cleanup;
	}

	if ((error = FUNC1(&value, cfg, &key, sm->name, "ignore")) == 0) {
		in_config = 1;
		if ((error = FUNC5(&sm->ignore, value)) < 0)
			goto cleanup;
		sm->ignore_default = sm->ignore;
	} else if (error != GIT_ENOTFOUND) {
		goto cleanup;
	}

	if (in_config)
		sm->flags |= GIT_SUBMODULE_STATUS_IN_CONFIG;

	error = 0;

cleanup:
	FUNC4(&key);
	return error;
}