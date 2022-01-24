#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC6(void)
{
	git_repository *untracked_repo;
	FUNC2(FUNC4(&untracked_repo, "stash/untracked_repo", false));
	FUNC1("stash/untracked_repo/content", "stuff");
	FUNC3(untracked_repo);

	FUNC0(repo, "untracked_repo/", GIT_STATUS_WT_NEW);

	FUNC2(FUNC5(
		&stash_tip_oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));

	FUNC0(repo, "untracked_repo/", GIT_STATUS_WT_NEW);
}