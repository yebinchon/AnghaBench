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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_STASH_DEFAULT ; 
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  sm ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC11(void)
{
	static git_index *smindex;
	static git_repository *smrepo;

	FUNC2(FUNC9(&stash_tip_oid, repo, signature, NULL, GIT_STASH_DEFAULT));
	FUNC0(repo, "modified", GIT_STATUS_CURRENT);

	/* modify file in submodule */
	FUNC3("submodules/testrepo/README", "heyheyhey");
	FUNC0(repo, "testrepo", GIT_STATUS_WT_MODIFIED);

	/* add file to index in submodule */
	FUNC2(FUNC10(&smrepo, sm));
	FUNC2(FUNC8(&smindex, smrepo));
	FUNC2(FUNC5(smindex, "README"));

	/* commit changed index of submodule */
	FUNC4(NULL, smrepo, NULL, 1372350000, "Modify it");
	FUNC0(repo, "testrepo", GIT_STATUS_WT_MODIFIED);

	FUNC1(FUNC9(&stash_tip_oid, repo, signature, NULL, GIT_STASH_DEFAULT), GIT_ENOTFOUND);

	FUNC6(smindex);
	FUNC7(smrepo);
}