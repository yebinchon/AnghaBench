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
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_REINSTATE_INDEX ; 
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  GIT_STATUS_INDEX_MODIFIED ; 
 int /*<<< orphan*/  GIT_STATUS_INDEX_NEW ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  signature ; 

void FUNC9(void)
{
	git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;
	const git_index_entry *ancestor;
	const git_index_entry *our;
	const git_index_entry *their;

	opts.flags = GIT_STASH_APPLY_REINSTATE_INDEX;

	FUNC3("stash/what", "ciao\n");
	FUNC2(FUNC5(repo_index, "what"));
	FUNC4(NULL, repo, signature, 0, "Other commit");

	FUNC2(FUNC8(repo, 0, &opts));

	FUNC1(FUNC7(repo_index), 1);
	FUNC2(FUNC6(&ancestor, &our, &their, repo_index, "what")); /* unmerged */
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_INDEX_MODIFIED);
	FUNC0(repo, "when", GIT_STATUS_WT_NEW);
	FUNC0(repo, "why", GIT_STATUS_INDEX_NEW);
}