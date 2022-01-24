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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {int* payload; int /*<<< orphan*/  transfer_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
typedef  TYPE_2__ git_fetch_options ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 TYPE_2__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_local_repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tagger_email ; 
 int /*<<< orphan*/  tagger_message ; 
 int /*<<< orphan*/  tagger_name ; 
 int /*<<< orphan*/  transfer_cb ; 

void FUNC27(void)
{
	git_repository *repo;
	git_remote *origin;
	int callcount = 0;
	git_reference *ref;
	git_config *config;
	git_oid tag_id;
	git_signature *tagger;
	git_object *obj;

	git_repository *remote_repo = FUNC5("testrepo.git");
	const char *url = FUNC4(FUNC22(remote_repo));
	git_fetch_options options = GIT_FETCH_OPTIONS_INIT;

	options.callbacks.transfer_progress = transfer_cb;
	options.callbacks.payload = &callcount;

	FUNC6(&cleanup_local_repo, "foo");
	FUNC3(FUNC21(&repo, "foo", true));

	FUNC3(FUNC14(&origin, repo, GIT_REMOTE_ORIGIN, url));
	FUNC3(FUNC15(origin, NULL, &options, NULL));
	FUNC16(origin);

	FUNC3(FUNC23(&obj, repo, "origin/master"));

	FUNC3(FUNC11(&ref, repo, "refs/remotes/origin/fake-remote", FUNC10(obj), 1, NULL));
	FUNC12(ref);

	/* create signature */
	FUNC3(FUNC25(&tagger, tagger_name, tagger_email, 123456789, 60));

	FUNC3(
		FUNC26(&tag_id, repo,
		  "some-tag", obj, tagger, tagger_message, 0)
	);
	FUNC24(tagger);

	FUNC3(FUNC19(&config, repo));
	FUNC3(FUNC8(config, "remote.origin.prune", 1));
	FUNC7(config);
	FUNC3(FUNC17(&origin, repo, GIT_REMOTE_ORIGIN));
	FUNC1(1, FUNC18(origin));
	FUNC3(FUNC15(origin, NULL, &options, NULL));

	FUNC0(repo, "refs/tags/some-tag");
	FUNC2(GIT_ENOTFOUND, FUNC13(&ref, repo, "refs/remotes/origin/fake-remote"));

	FUNC9(obj);
	FUNC16(origin);

	FUNC20(repo);
}