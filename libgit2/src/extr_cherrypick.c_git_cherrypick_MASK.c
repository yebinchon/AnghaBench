#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_indexwriter ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_8__ {int /*<<< orphan*/  checkout_strategy; } ;
struct TYPE_7__ {TYPE_3__ checkout_opts; int /*<<< orphan*/  merge_opts; int /*<<< orphan*/  mainline; } ;
typedef  TYPE_1__ git_cherrypick_options ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  commit_oidstr ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHERRYPICK_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_INDEXWRITER_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int FUNC25 (int /*<<< orphan*/ *,char const*) ; 

int FUNC26(
	git_repository *repo,
	git_commit *commit,
	const git_cherrypick_options *given_opts)
{
	git_cherrypick_options opts;
	git_reference *our_ref = NULL;
	git_commit *our_commit = NULL;
	char commit_oidstr[GIT_OID_HEXSZ + 1];
	const char *commit_msg, *commit_summary;
	git_buf their_label = GIT_BUF_INIT;
	git_index *index = NULL;
	git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
	int error = 0;

	FUNC1(repo && commit);

	FUNC0(given_opts, GIT_CHERRYPICK_OPTIONS_VERSION, "git_cherrypick_options");

	if ((error = FUNC22(repo, "cherry-pick")) < 0)
		return error;

	if ((commit_msg = FUNC11(commit)) == NULL ||
		(commit_summary = FUNC12(commit)) == NULL) {
		error = -1;
		goto on_error;
	}

	FUNC19(commit_oidstr, sizeof(commit_oidstr), FUNC10(commit));

	if ((error = FUNC25(repo, commit_msg)) < 0 ||
		(error = FUNC6(&their_label, "%.7s... %s", commit_oidstr, commit_summary)) < 0 ||
		(error = FUNC2(repo, &opts, given_opts, FUNC4(&their_label))) < 0 ||
		(error = FUNC16(&indexwriter, repo, &opts.checkout_opts.checkout_strategy)) < 0 ||
		(error = FUNC24(repo, commit_oidstr)) < 0 ||
		(error = FUNC23(&our_ref, repo)) < 0 ||
		(error = FUNC21((git_object **)&our_commit, our_ref, GIT_OBJECT_COMMIT)) < 0 ||
		(error = FUNC8(&index, repo, commit, our_commit, opts.mainline, &opts.merge_opts)) < 0 ||
		(error = FUNC18(repo, index)) < 0 ||
		(error = FUNC17(repo, index)) < 0 ||
		(error = FUNC7(repo, index, &opts.checkout_opts)) < 0 ||
		(error = FUNC15(&indexwriter)) < 0)
		goto on_error;

	goto done;

on_error:
	FUNC3(repo);

done:
	FUNC14(&indexwriter);
	FUNC13(index);
	FUNC9(our_commit);
	FUNC20(our_ref);
	FUNC5(&their_label);

	return error;
}