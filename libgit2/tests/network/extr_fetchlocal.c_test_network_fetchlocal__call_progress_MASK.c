#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_5__ {int* payload; int /*<<< orphan*/  sideband_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
typedef  TYPE_2__ git_fetch_options ;

/* Variables and functions */
 TYPE_2__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cleanup_local_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  sideband_cb ; 

void FUNC9(void)
{
	git_repository *repo;
	git_remote *remote;
	git_fetch_options options = GIT_FETCH_OPTIONS_INIT;
	int callcount = 0;

	FUNC2(FUNC8(&repo, "foo.git", true));
	FUNC3(cleanup_local_repo, "foo.git");

	FUNC2(FUNC4(&remote, repo, "origin", FUNC1("testrepo.git"), "+refs/heads/*:refs/heads/*"));

	options.callbacks.sideband_progress = sideband_cb;
	options.callbacks.payload = &callcount;

	FUNC2(FUNC5(remote, NULL, &options, NULL));
	FUNC0(callcount != 0);

	FUNC6(remote);
	FUNC7(repo);
}