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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5(void)
{
	git_repository *repo = FUNC2("status");
	git_submodule *sm = NULL;

	FUNC4("status/subrepo", 0777);
	FUNC1("status/subrepo/.git", "gitdir: ../.git");

	FUNC0(GIT_ENOTFOUND, FUNC3(&sm, repo, "subdir"));

	FUNC0(GIT_EEXISTS, FUNC3(&sm, repo, "subrepo"));

	FUNC0(GIT_ENOTFOUND, FUNC3(&sm, repo, "subdir"));

	FUNC0(GIT_EEXISTS, FUNC3(&sm, repo, "subrepo"));
}