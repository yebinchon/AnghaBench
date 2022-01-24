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
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_CURRENT ; 
 int GIT_STATUS_INDEX_MODIFIED ; 
 int GIT_STATUS_INDEX_NEW ; 
 int GIT_STATUS_WT_MODIFIED ; 
 int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  signature ; 

void FUNC11(void)
{
	git_oid oid;

	repo = FUNC4("stash");
	FUNC2(FUNC8(&repo_index, repo));
	FUNC2(FUNC9(&signature, "nulltoken", "emeric.fermas@gmail.com", 1323847743, 60)); /* Wed Dec 14 08:29:03 2011 +0100 */

	FUNC1("stash/what", "hello\n");
	FUNC1("stash/how", "small\n");
	FUNC1("stash/who", "world\n");
	FUNC1("stash/where", "meh\n");

	FUNC2(FUNC6(repo_index, "what"));
	FUNC2(FUNC6(repo_index, "how"));
	FUNC2(FUNC6(repo_index, "who"));

	FUNC5(NULL, repo, signature, 0, "Initial commit");

	FUNC3("stash/what", "goodbye\n");
	FUNC3("stash/who", "funky world\n");
	FUNC1("stash/when", "tomorrow\n");
	FUNC1("stash/why", "would anybody use stash?\n");
	FUNC1("stash/where", "????\n");

	FUNC2(FUNC6(repo_index, "who"));
	FUNC2(FUNC6(repo_index, "why"));
	FUNC2(FUNC6(repo_index, "where"));
	FUNC2(FUNC7(repo_index));

	FUNC3("stash/where", "....\n");

	/* Pre-stash state */
	FUNC0(repo, "what", GIT_STATUS_WT_MODIFIED);
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_INDEX_MODIFIED);
	FUNC0(repo, "when", GIT_STATUS_WT_NEW);
	FUNC0(repo, "why", GIT_STATUS_INDEX_NEW);
	FUNC0(repo, "where", GIT_STATUS_INDEX_NEW|GIT_STATUS_WT_MODIFIED);

	FUNC2(FUNC10(&oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));

	/* Post-stash state */
	FUNC0(repo, "what", GIT_STATUS_CURRENT);
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_CURRENT);
	FUNC0(repo, "when", GIT_ENOTFOUND);
	FUNC0(repo, "why", GIT_ENOTFOUND);
	FUNC0(repo, "where", GIT_ENOTFOUND);
}