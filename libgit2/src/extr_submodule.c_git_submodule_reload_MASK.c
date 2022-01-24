#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  repo; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_SUBMODULE_STATUS_IN_WD ; 
 int GIT_SUBMODULE_STATUS__WD_FLAGS ; 
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 

int FUNC10(git_submodule *sm, int force)
{
	int error = 0, isvalid;
	git_config *mods;

	FUNC0(force);

	FUNC1(sm);

	isvalid = FUNC4(sm->repo, sm->name, 0);
	if (isvalid <= 0) {
		/* This should come with a warning, but we've no API for that */
		return isvalid;
	}

	if (!FUNC3(sm->repo)) {
		/* refresh config data */
		if ((error = FUNC5(&mods, sm->repo)) < 0 && error != GIT_ENOTFOUND)
			return error;
		if (mods != NULL) {
			error = FUNC7(sm, mods);
			FUNC2(mods);

			if (error < 0)
				return error;
		}

		/* refresh wd data */
		sm->flags &=
			~(GIT_SUBMODULE_STATUS_IN_WD |
			  GIT_SUBMODULE_STATUS__WD_OID_VALID |
			  GIT_SUBMODULE_STATUS__WD_FLAGS);

		error = FUNC6(sm);
	}

	if (error == 0 && (error = FUNC9(sm)) == 0)
		error = FUNC8(sm);

	return error;
}