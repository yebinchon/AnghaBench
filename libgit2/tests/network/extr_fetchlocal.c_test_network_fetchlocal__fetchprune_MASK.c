#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_10__ {int* payload; int /*<<< orphan*/  transfer_progress; } ;
struct TYPE_9__ {TYPE_4__ callbacks; } ;
typedef  TYPE_2__ git_fetch_options ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 TYPE_2__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_local_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  transfer_cb ; 

void FUNC23(void)
{
	git_repository *repo;
	git_remote *origin;
	int callcount = 0;
	git_strarray refnames = {0};
	git_reference *ref;
	git_config *config;
	git_repository *remote_repo = FUNC4("testrepo.git");
	const char *url = FUNC3(FUNC21(remote_repo));
	git_fetch_options options = GIT_FETCH_OPTIONS_INIT;

	options.callbacks.transfer_progress = transfer_cb;
	options.callbacks.payload = &callcount;

	FUNC5(&cleanup_local_repo, "foo");
	FUNC2(FUNC20(&repo, "foo", true));

	FUNC2(FUNC12(&origin, repo, GIT_REMOTE_ORIGIN, url));
	FUNC2(FUNC13(origin, NULL, &options, NULL));

	FUNC2(FUNC10(&refnames, repo));
	FUNC1(19, (int)refnames.count);
	FUNC0(callcount > 0);
	FUNC22(&refnames);
	FUNC14(origin);

	FUNC2(FUNC11(&ref, remote_repo, "refs/heads/br2"));
	FUNC2(FUNC8(ref));
	FUNC9(ref);

	FUNC2(FUNC15(&origin, repo, GIT_REMOTE_ORIGIN));
	FUNC2(FUNC13(origin, NULL, &options, NULL));
	FUNC2(FUNC16(origin, &options.callbacks));

	FUNC2(FUNC10(&refnames, repo));
	FUNC1(18, (int)refnames.count);
	FUNC22(&refnames);
	FUNC14(origin);

	FUNC2(FUNC11(&ref, remote_repo, "refs/heads/packed"));
	FUNC2(FUNC8(ref));
	FUNC9(ref);

	FUNC2(FUNC18(&config, repo));
	FUNC2(FUNC7(config, "remote.origin.prune", 1));
	FUNC6(config);
	FUNC2(FUNC15(&origin, repo, GIT_REMOTE_ORIGIN));
	FUNC1(1, FUNC17(origin));
	FUNC2(FUNC13(origin, NULL, &options, NULL));

	FUNC2(FUNC10(&refnames, repo));
	FUNC1(17, (int)refnames.count);
	FUNC22(&refnames);
	FUNC14(origin);

	FUNC19(repo);
}