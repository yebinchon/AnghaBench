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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_STASH_DEFAULT ; 
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC8(void)
{
	git_index *index;
	git_oid stash_tip_oid;

	FUNC1(FUNC5(&index, repo));

	/*
	 * 'what', 'where' and 'who' are being committed.
	 * 'when' remains untracked.
	 */
	FUNC1(FUNC3(index, "what"));
	FUNC1(FUNC3(index, "where"));
	FUNC1(FUNC3(index, "who"));

	FUNC2(NULL, repo, signature, 0, "Initial commit");
	FUNC4(index);

	FUNC0(GIT_ENOTFOUND,
		FUNC6(&stash_tip_oid, repo, signature, NULL, GIT_STASH_DEFAULT));

	FUNC7("stash/when");
	FUNC0(GIT_ENOTFOUND,
		FUNC6(&stash_tip_oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));
}