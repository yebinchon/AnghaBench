#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** member_0; int member_1; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_config *config;
	git_remote *remote;
	char *specstr[] = {
		"refs/tags/*:refs/tags/*",
	};
	git_strarray specs = {
		specstr,
		1,
	};

	FUNC0(FUNC2(&remote, _repo, "taggy", FUNC6(_repo)));

	/*
	 * Set the current branch's upstream remote to a dummy ref so we call into the code
	 * which tries to check for the current branch's upstream in the refspecs
	 */
	FUNC0(FUNC5(&config, _repo));
	FUNC0(FUNC1(config, "branch.master.remote", "taggy"));
	FUNC0(FUNC1(config, "branch.master.merge", "refs/heads/foo"));

	FUNC0(FUNC3(remote, &specs, NULL, NULL));

	FUNC4(remote);
}