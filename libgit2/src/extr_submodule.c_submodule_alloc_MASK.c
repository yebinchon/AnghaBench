#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * branch; int /*<<< orphan*/ * repo; int /*<<< orphan*/  fetch_recurse_default; int /*<<< orphan*/  fetch_recurse; int /*<<< orphan*/  update_default; int /*<<< orphan*/  update; int /*<<< orphan*/  ignore_default; int /*<<< orphan*/  ignore; int /*<<< orphan*/  name; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_NONE ; 
 int /*<<< orphan*/  GIT_SUBMODULE_RECURSE_NO ; 
 int /*<<< orphan*/  GIT_SUBMODULE_UPDATE_CHECKOUT ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
	git_submodule **out, git_repository *repo, const char *name)
{
	size_t namelen;
	git_submodule *sm;

	if (!name || !(namelen = FUNC6(name))) {
		FUNC5(GIT_ERROR_SUBMODULE, "invalid submodule name");
		return -1;
	}

	sm = FUNC2(1, sizeof(git_submodule));
	FUNC0(sm);

	sm->name = sm->path = FUNC4(name);
	if (!sm->name) {
		FUNC3(sm);
		return -1;
	}

	FUNC1(sm);
	sm->ignore = sm->ignore_default = GIT_SUBMODULE_IGNORE_NONE;
	sm->update = sm->update_default = GIT_SUBMODULE_UPDATE_CHECKOUT;
	sm->fetch_recurse = sm->fetch_recurse_default = GIT_SUBMODULE_RECURSE_NO;
	sm->repo   = repo;
	sm->branch = NULL;

	*out = sm;
	return 0;
}