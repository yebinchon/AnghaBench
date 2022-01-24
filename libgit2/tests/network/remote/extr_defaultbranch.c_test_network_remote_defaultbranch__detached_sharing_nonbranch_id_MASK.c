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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_remote ; 
 int /*<<< orphan*/  g_repo_a ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	git_oid id, id_cloned;
	git_reference *ref;
	git_buf buf = GIT_BUF_INIT;
	git_repository *cloned_repo;

	FUNC2(FUNC7(&id, g_repo_a, "HEAD"));
	FUNC2(FUNC11(g_repo_a));
	FUNC2(FUNC8(g_repo_a, "refs/heads/master"));
	FUNC2(FUNC8(g_repo_a, "refs/heads/not-good"));
	FUNC2(FUNC5(&ref, g_repo_a, "refs/foo/bar", &id, 1, NULL));
	FUNC6(ref);

	FUNC2(FUNC9(g_remote, GIT_DIRECTION_FETCH, NULL, NULL, NULL));
	FUNC1(GIT_ENOTFOUND, FUNC10(&buf, g_remote));

	FUNC2(FUNC3(&cloned_repo, FUNC14(g_repo_a), "./local-detached", NULL));

	FUNC0(FUNC13(cloned_repo));
	FUNC2(FUNC7(&id_cloned, g_repo_a, "HEAD"));
	FUNC0(FUNC4(&id, &id_cloned));

	FUNC12(cloned_repo);
}