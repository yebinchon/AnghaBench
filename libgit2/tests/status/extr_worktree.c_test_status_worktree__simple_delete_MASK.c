#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH ; 
 int GIT_STATUS_OPT_EXCLUDE_SUBMODULES ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
 int /*<<< orphan*/  cb_status__count ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
    git_repository *repo = FUNC2("renames");
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	int count;

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH |
		GIT_STATUS_OPT_EXCLUDE_SUBMODULES |
		GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;

	count = 0;
	FUNC1(
		FUNC4(repo, &opts, cb_status__count, &count) );
	FUNC0(0, count);

	FUNC3(FUNC5("renames/untimely.txt"));

	count = 0;
	FUNC1(
		FUNC4(repo, &opts, cb_status__count, &count) );
	FUNC0(1, count);
}