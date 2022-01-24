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

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_TREE ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_IGNORED ; 
 int GIT_STATUS_INDEX_MODIFIED ; 
 int GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC6(void)
{
	FUNC3(FUNC5("stash/when"));

	FUNC1(repo, "what", GIT_STATUS_WT_MODIFIED | GIT_STATUS_INDEX_MODIFIED);
	FUNC1(repo, "how", GIT_STATUS_INDEX_MODIFIED);
	FUNC1(repo, "who", GIT_STATUS_WT_MODIFIED);
	FUNC1(repo, "when", GIT_ENOTFOUND);
	FUNC1(repo, "just.ignore", GIT_STATUS_IGNORED);

	FUNC2(FUNC4(&stash_tip_oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));

	FUNC0("stash^3^{tree}", EMPTY_TREE, GIT_OBJECT_TREE);
}