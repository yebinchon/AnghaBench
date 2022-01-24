#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  wd_oid; int /*<<< orphan*/  path; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_9__ {char const* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  DOT_GIT ; 
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_EBAREREPO ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 unsigned int GIT_REPOSITORY_OPEN_BARE ; 
 unsigned int GIT_REPOSITORY_OPEN_NO_SEARCH ; 
 int GIT_SUBMODULE_STATUS_IN_WD ; 
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ; 
 int GIT_SUBMODULE_STATUS__WD_SCANNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ **,char const*,unsigned int,char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
	git_repository **subrepo, git_submodule *sm, bool bare)
{
	int error;
	git_buf path = GIT_BUF_INIT;
	unsigned int flags = GIT_REPOSITORY_OPEN_NO_SEARCH;
	const char *wd;

	FUNC0(sm && subrepo);

	if (FUNC8(
			sm->repo, "open submodule repository") < 0)
		return GIT_EBAREREPO;

	wd = FUNC10(sm->repo);

	if (FUNC2(&path, wd, sm->path) < 0 ||
		FUNC2(&path, path.ptr, DOT_GIT) < 0)
		return -1;

	sm->flags = sm->flags &
		~(GIT_SUBMODULE_STATUS_IN_WD |
		  GIT_SUBMODULE_STATUS__WD_OID_VALID |
		  GIT_SUBMODULE_STATUS__WD_SCANNED);

	if (bare)
		flags |= GIT_REPOSITORY_OPEN_BARE;

	error = FUNC9(subrepo, path.ptr, flags, wd);

	/* if we opened the submodule successfully, grab HEAD OID, etc. */
	if (!error) {
		sm->flags |= GIT_SUBMODULE_STATUS_IN_WD |
			GIT_SUBMODULE_STATUS__WD_SCANNED;

		if (!FUNC7(&sm->wd_oid, *subrepo, GIT_HEAD_FILE))
			sm->flags |= GIT_SUBMODULE_STATUS__WD_OID_VALID;
		else
			FUNC4();
	} else if (FUNC5(path.ptr)) {
		sm->flags |= GIT_SUBMODULE_STATUS__WD_SCANNED |
			GIT_SUBMODULE_STATUS_IN_WD;
	} else {
		FUNC3(&path, '/'); /* remove "/.git" */

		if (FUNC6(path.ptr))
			sm->flags |= GIT_SUBMODULE_STATUS__WD_SCANNED;
	}

	FUNC1(&path);

	return error;
}