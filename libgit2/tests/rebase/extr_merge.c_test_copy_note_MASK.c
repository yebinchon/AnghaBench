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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_rebase_options ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_note ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

__attribute__((used)) static void FUNC23(
	const git_rebase_options *opts,
	bool should_exist)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_commit *branch_commit;
	git_rebase_operation *rebase_operation;
	git_oid note_id, commit_id;
	git_note *note = NULL;
	int error;

	FUNC3(FUNC20(&branch_ref, repo, "refs/heads/gravy"));
	FUNC3(FUNC20(&upstream_ref, repo, "refs/heads/veal"));

	FUNC3(FUNC5(&branch_head, repo, branch_ref));
	FUNC3(FUNC5(&upstream_head, repo, upstream_ref));

	FUNC3(FUNC21((git_object **)&branch_commit,
		branch_ref, GIT_OBJECT_COMMIT));

	/* Add a note to a commit */
	FUNC3(FUNC10(&note_id, repo, "refs/notes/test",
		FUNC6(branch_commit), FUNC7(branch_commit),
		FUNC9(branch_commit),
		"This is a commit note.", 0));

	FUNC3(FUNC17(&rebase, repo, branch_head, upstream_head, NULL, opts));

	FUNC3(FUNC18(&rebase_operation, rebase));
	FUNC3(FUNC14(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC3(FUNC15(rebase, signature));

	FUNC0(GIT_REPOSITORY_STATE_NONE, FUNC22(repo));

	if (should_exist) {
		FUNC3(FUNC13(&note, repo, "refs/notes/test", &commit_id));
		FUNC1("This is a commit note.", FUNC12(note));
	} else {
		FUNC2(error =
			FUNC13(&note, repo, "refs/notes/test", &commit_id));
		FUNC0(GIT_ENOTFOUND, error);
	}

	FUNC11(note);
	FUNC8(branch_commit);
	FUNC4(branch_head);
	FUNC4(upstream_head);
	FUNC19(branch_ref);
	FUNC19(upstream_ref);
	FUNC16(rebase);
}