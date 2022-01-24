#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_2__ {int /*<<< orphan*/  message; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC18(void)
{
	git_reference *ref, *branch;
	git_repository *repo;
	git_remote *remote;
	git_config *cfg;

	repo = FUNC5("testrepo.git");

	FUNC3(FUNC15(&remote, repo, "matching", ".", NULL));
	FUNC3(FUNC14(repo, "matching", ":"));

	FUNC3(FUNC12(&branch, repo, "refs/heads/test"));
	FUNC3(FUNC10(&ref, repo, "refs/remotes/matching/master", FUNC13(branch), 1, "fetch"));
	FUNC1(FUNC6(branch, "matching/master"));
	FUNC0("could not determine remote for 'refs/remotes/matching/master'",
			  FUNC9()->message);

	/* we can't set it automatically, so let's test the user setting it by hand */
	FUNC3(FUNC17(&cfg, repo));
	FUNC3(FUNC8(cfg, "branch.test.remote", "matching"));
	FUNC3(FUNC8(cfg, "branch.test.merge", "refs/heads/master"));
	/* we still can't find it because there is no rule for that reference */
	FUNC2(GIT_ENOTFOUND, FUNC7(&ref, branch));

	FUNC11(ref);
	FUNC11(branch);
	FUNC16(remote);

	FUNC4();
}