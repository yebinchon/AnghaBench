#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  checkout_strategy; } ;
struct TYPE_7__ {TYPE_5__ checkout_opts; int /*<<< orphan*/  merge_opts; int /*<<< orphan*/  mainline; } ;
typedef  TYPE_1__ git_revert_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_indexwriter ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_INDEXWRITER_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_REVERT_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC24 (int /*<<< orphan*/ *,char*) ; 

int FUNC25(
	git_repository *repo,
	git_commit *commit,
	const git_revert_options *given_opts)
{
	git_revert_options opts;
	git_reference *our_ref = NULL;
	git_commit *our_commit = NULL;
	char commit_oidstr[GIT_OID_HEXSZ + 1];
	const char *commit_msg;
	git_buf their_label = GIT_BUF_INIT;
	git_index *index = NULL;
	git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
	int error;

	FUNC1(repo && commit);

	FUNC0(given_opts, GIT_REVERT_OPTIONS_VERSION, "git_revert_options");

	if ((error = FUNC18(repo, "revert")) < 0)
		return error;

	FUNC15(commit_oidstr, FUNC7(commit));
	commit_oidstr[GIT_OID_HEXSZ] = '\0';

	if ((commit_msg = FUNC8(commit)) == NULL) {
		error = -1;
		goto on_error;
	}

	if ((error = FUNC4(&their_label, "parent of %.7s... %s", commit_oidstr, commit_msg)) < 0 ||
		(error = FUNC21(repo, &opts, given_opts, FUNC2(&their_label))) < 0 ||
		(error = FUNC12(&indexwriter, repo, &opts.checkout_opts.checkout_strategy)) < 0 ||
		(error = FUNC24(repo, commit_oidstr)) < 0 ||
		(error = FUNC23(repo, commit_oidstr, commit_msg)) < 0 ||
		(error = FUNC19(&our_ref, repo)) < 0 ||
		(error = FUNC17((git_object **)&our_commit, our_ref, GIT_OBJECT_COMMIT)) < 0 ||
		(error = FUNC20(&index, repo, commit, our_commit, opts.mainline, &opts.merge_opts)) < 0 ||
		(error = FUNC14(repo, index)) < 0 ||
		(error = FUNC13(repo, index)) < 0 ||
		(error = FUNC5(repo, index, &opts.checkout_opts)) < 0 ||
		(error = FUNC11(&indexwriter)) < 0)
		goto on_error;

	goto done;

on_error:
	FUNC22(repo);

done:
	FUNC10(&indexwriter);
	FUNC9(index);
	FUNC6(our_commit);
	FUNC16(our_ref);
	FUNC3(&their_label);

	return error;
}