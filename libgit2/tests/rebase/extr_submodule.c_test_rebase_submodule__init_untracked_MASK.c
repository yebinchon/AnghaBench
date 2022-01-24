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
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC17(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_buf untracked_path = GIT_BUF_INIT;
	FILE *fp;
	git_submodule *submodule;

	FUNC0(FUNC12(&branch_ref, repo, "refs/heads/asparagus"));
	FUNC0(FUNC12(&upstream_ref, repo, "refs/heads/master"));

	FUNC0(FUNC5(&branch_head, repo, branch_ref));
	FUNC0(FUNC5(&upstream_head, repo, upstream_ref));

	FUNC0(FUNC15(&submodule, repo, "my-submodule"));
	FUNC0(FUNC16(submodule, 1, NULL));

	FUNC8(&untracked_path, "%s/my-submodule/untracked", FUNC13(repo));
	fp = FUNC2(FUNC6(&untracked_path), "w");
	FUNC3(fp, "An untracked file in a submodule should not block a rebase\n");
	FUNC1(fp);
	FUNC7(&untracked_path);

	FUNC0(FUNC10(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC14(submodule);
	FUNC4(branch_head);
	FUNC4(upstream_head);
	FUNC11(branch_ref);
	FUNC11(upstream_ref);
	FUNC9(rebase);
}