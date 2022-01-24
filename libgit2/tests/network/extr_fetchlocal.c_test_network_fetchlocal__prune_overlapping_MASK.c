#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {int* payload; void* update_tips; int /*<<< orphan*/  transfer_progress; } ;
struct TYPE_10__ {TYPE_1__ callbacks; } ;
typedef  TYPE_3__ git_fetch_options ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 TYPE_3__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_local_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  transfer_cb ; 
 void* update_tips_fail_on_call ; 

void FUNC25(void)
{
	git_repository *repo;
	git_remote *origin;
	int callcount = 0;
	git_strarray refnames = {0};
	git_reference *ref;
	git_config *config;
	git_oid target;

	git_repository *remote_repo = FUNC4("testrepo.git");
	const char *url = FUNC3(FUNC23(remote_repo));

	git_fetch_options options = GIT_FETCH_OPTIONS_INIT;
	options.callbacks.transfer_progress = transfer_cb;
	options.callbacks.payload = &callcount;

	FUNC2(FUNC14(&ref, remote_repo, "refs/heads/master"));
	FUNC10(&target, FUNC15(ref));
	FUNC12(ref);
	FUNC2(FUNC11(&ref, remote_repo, "refs/pull/42/head", &target, 1, NULL));
	FUNC12(ref);

	FUNC5(&cleanup_local_repo, "foo");
	FUNC2(FUNC22(&repo, "foo", true));

	FUNC2(FUNC16(&origin, repo, GIT_REMOTE_ORIGIN, url));

	FUNC2(FUNC20(&config, repo));
	FUNC2(FUNC8(config, "remote.origin.prune", true));
	FUNC2(FUNC9(config, "remote.origin.fetch", "^$", "refs/pull/*/head:refs/remotes/origin/pr/*"));

	FUNC18(origin);
	FUNC2(FUNC19(&origin, repo, GIT_REMOTE_ORIGIN));
	FUNC2(FUNC17(origin, NULL, &options, NULL));

	FUNC0(repo, "refs/remotes/origin/master");
	FUNC0(repo, "refs/remotes/origin/pr/42");
	FUNC2(FUNC13(&refnames, repo));
	FUNC1(20, (int)refnames.count);
	FUNC24(&refnames);

	FUNC2(FUNC6(config, "remote.origin.fetch", "refs"));
	FUNC2(FUNC9(config, "remote.origin.fetch", "^$", "refs/pull/*/head:refs/remotes/origin/pr/*"));
	FUNC2(FUNC9(config, "remote.origin.fetch", "^$", "refs/heads/*:refs/remotes/origin/*"));

	FUNC18(origin);
	FUNC2(FUNC19(&origin, repo, GIT_REMOTE_ORIGIN));
	options.callbacks.update_tips = update_tips_fail_on_call;
	FUNC2(FUNC17(origin, NULL, &options, NULL));

	FUNC0(repo, "refs/remotes/origin/master");
	FUNC0(repo, "refs/remotes/origin/pr/42");
	FUNC2(FUNC13(&refnames, repo));
	FUNC1(20, (int)refnames.count);
	FUNC24(&refnames);

	FUNC2(FUNC6(config, "remote.origin.fetch", "refs"));
	FUNC2(FUNC9(config, "remote.origin.fetch", "^$", "refs/heads/*:refs/remotes/origin/*"));
	FUNC2(FUNC9(config, "remote.origin.fetch", "^$", "refs/pull/*/head:refs/remotes/origin/pr/*"));

	FUNC18(origin);
	FUNC2(FUNC19(&origin, repo, GIT_REMOTE_ORIGIN));
	options.callbacks.update_tips = update_tips_fail_on_call;
	FUNC2(FUNC17(origin, NULL, &options, NULL));

	FUNC7(config);
	FUNC24(&refnames);
	FUNC18(origin);
	FUNC21(repo);
}