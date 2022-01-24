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
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_stash_apply_options ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_REINSTATE_INDEX ; 
 int GIT_STATUS_CURRENT ; 
 int GIT_STATUS_INDEX_MODIFIED ; 
 int GIT_STATUS_INDEX_NEW ; 
 int GIT_STATUS_WT_MODIFIED ; 
 int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC8(void)
{
	git_buf where = GIT_BUF_INIT;
	git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;

	opts.flags = GIT_STASH_APPLY_REINSTATE_INDEX;

	FUNC3(FUNC7(repo, 0, &opts));

	FUNC1(FUNC6(repo_index), 0);
	FUNC0(repo, "what", GIT_STATUS_WT_MODIFIED);
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_INDEX_MODIFIED);
	FUNC0(repo, "when", GIT_STATUS_WT_NEW);
	FUNC0(repo, "why", GIT_STATUS_INDEX_NEW);
	FUNC0(repo, "where", GIT_STATUS_INDEX_NEW | GIT_STATUS_WT_MODIFIED);

	FUNC3(FUNC5(&where, "stash/where"));
	FUNC2("....\n", where.ptr);

	FUNC4(&where);
}