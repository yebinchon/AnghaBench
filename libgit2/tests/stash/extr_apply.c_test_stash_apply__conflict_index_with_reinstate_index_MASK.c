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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_stash_apply_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ECONFLICT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_REINSTATE_INDEX ; 
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  signature ; 

void FUNC10(void)
{
	git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;

	opts.flags = GIT_STASH_APPLY_REINSTATE_INDEX;

	FUNC4("stash/who", "nothing\n");
	FUNC3(FUNC6(repo_index, "who"));
	FUNC3(FUNC8(repo_index));
	FUNC5(NULL, repo, signature, 0, "Other commit");

	FUNC2(FUNC9(repo, 0, &opts), GIT_ECONFLICT);

	FUNC1(FUNC7(repo_index), 0);
	FUNC0(repo, "what", GIT_STATUS_CURRENT);
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_CURRENT);
	FUNC0(repo, "when", GIT_ENOTFOUND);
	FUNC0(repo, "why", GIT_ENOTFOUND);
}