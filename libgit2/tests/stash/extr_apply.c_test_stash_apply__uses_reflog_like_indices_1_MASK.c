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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  GIT_STATUS_INDEX_NEW ; 
 int /*<<< orphan*/  GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  signature ; 

void FUNC7(void)
{
	git_oid oid;

	FUNC2("stash/untracked", "untracked\n");
	FUNC3(FUNC6(&oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));
	FUNC0(repo, "untracked", GIT_ENOTFOUND);

	/* stash@{1} is the oldest (first) stash we made */
	FUNC3(FUNC5(repo, 1, NULL));
	FUNC1(FUNC4(repo_index), 0);
	FUNC0(repo, "what", GIT_STATUS_WT_MODIFIED);
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_WT_MODIFIED);
	FUNC0(repo, "when", GIT_STATUS_WT_NEW);
	FUNC0(repo, "why", GIT_STATUS_INDEX_NEW);
	FUNC0(repo, "where", GIT_STATUS_INDEX_NEW);
}