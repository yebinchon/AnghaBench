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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  push_array ; 

void FUNC11(void) {
	git_repository *src_repo;
	git_repository *dst_repo;
	git_remote *new_remote;
	git_reference* branch;

	/* Copy test repo */
	FUNC1("testrepo.git");
	FUNC2(FUNC10(&src_repo, "testrepo.git"));

	/* Set up an empty bare repo to push into */
	FUNC2(FUNC9(&dst_repo, "./localbare.git", 1));

	/* Push to bare repo */
	FUNC2(FUNC5(&new_remote, src_repo, "bare", "./localbare.git"));
	FUNC2(FUNC7(new_remote, &push_array, NULL));
	/* Make sure remote branch has been created */
	FUNC2(FUNC3(&branch, src_repo, "bare/master", GIT_BRANCH_REMOTE));

	FUNC4(branch);
	FUNC6(new_remote);
	FUNC8(dst_repo);
	FUNC0("localbare.git");
	FUNC8(src_repo);
	FUNC0("testrepo.git");
}