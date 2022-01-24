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
struct TYPE_11__ {int flags; int /*<<< orphan*/  url; int /*<<< orphan*/  name; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int GIT_SUBMODULE_STATUS_IN_WD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,char,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC11(git_submodule *sm)
{
	int error = 0;
	git_config *cfg = NULL;
	git_buf key = GIT_BUF_INIT;
	git_repository *smrepo = NULL;

	if (!sm->url) {
		FUNC6(GIT_ERROR_SUBMODULE,
			"no URL configured for submodule '%s'", sm->name);
		return -1;
	}

	/* copy URL over to config only if it already exists */

	if (!(error = FUNC7(&cfg, sm->repo)) &&
		!(error = FUNC2(&key, "submodule.%s.url", sm->name)))
		error = FUNC4(cfg, key.ptr, sm->url, true, true);

	/* if submodule exists in the working directory, update remote url */

	if (!error &&
		(sm->flags & GIT_SUBMODULE_STATUS_IN_WD) != 0 &&
		!(error = FUNC9(&smrepo, sm)))
	{
		git_buf remote_name = GIT_BUF_INIT;

		if ((error = FUNC7(&cfg, smrepo)) < 0)
			/* return error from reading submodule config */;
		else if ((error = FUNC10(&remote_name, smrepo)) < 0) {
			FUNC5();
			error = FUNC3(&key, "remote.origin.url");
		} else {
			error = FUNC1(
				&key, '.', "remote", remote_name.ptr, "url");
			FUNC0(&remote_name);
		}

		if (!error)
			error = FUNC4(cfg, key.ptr, sm->url, true, false);

		FUNC8(smrepo);
	}

	FUNC0(&key);

	return error;
}