#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH ; 
 int GIT_STATUS_OPT_EXCLUDE_SUBMODULES ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
 int /*<<< orphan*/  GIT_STATUS_WT_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(void)
{
	git_repository *repo = FUNC3("renames");
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	git_status_list *status;

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH |
		GIT_STATUS_OPT_EXCLUDE_SUBMODULES |
		GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;

	FUNC2(FUNC8(&status, repo, &opts));
	FUNC1(0, FUNC6(status));
	FUNC7(status);

	FUNC4(FUNC9("renames/untimely.txt"));

	FUNC2(FUNC8(&status, repo, &opts));
	FUNC1(1, FUNC6(status));
	FUNC0(
		GIT_STATUS_WT_DELETED, FUNC5(status, 0)->status);
	FUNC7(status);
}