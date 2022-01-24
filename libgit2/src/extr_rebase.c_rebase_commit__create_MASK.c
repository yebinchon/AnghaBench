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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_rebase_operation ;
struct TYPE_6__ {int /*<<< orphan*/  payload; int /*<<< orphan*/  (* signing_cb ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  repo; TYPE_1__ options; int /*<<< orphan*/  current; int /*<<< orphan*/  operations; } ;
typedef  TYPE_3__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_EAPPLIED ; 
 int /*<<< orphan*/  GIT_ERROR_REBASE ; 
 int GIT_EUNMERGED ; 
 int GIT_OK ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(
	git_commit **out,
	git_rebase *rebase,
	git_index *index,
	git_commit *parent_commit,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message)
{
	git_rebase_operation *operation;
	git_commit *current_commit = NULL, *commit = NULL;
	git_tree *parent_tree = NULL, *tree = NULL;
	git_oid tree_id, commit_id;
	git_buf commit_content = GIT_BUF_INIT, commit_signature = GIT_BUF_INIT,
		signature_field = GIT_BUF_INIT;
	const char *signature_field_string = NULL,
		*commit_signature_string = NULL;
	int error;

	operation = FUNC1(rebase->operations, rebase->current);

	if (FUNC17(index)) {
		FUNC15(GIT_ERROR_REBASE, "conflicts have not been resolved");
		error = GIT_EUNMERGED;
		goto done;
	}

	if ((error = FUNC10(&current_commit, rebase->repo, &operation->id)) < 0 ||
		(error = FUNC13(&parent_tree, parent_commit)) < 0 ||
		(error = FUNC18(&tree_id, index, rebase->repo)) < 0 ||
		(error = FUNC22(&tree, rebase->repo, &tree_id)) < 0)
		goto done;

	if (FUNC19(&tree_id, FUNC21(parent_tree))) {
		FUNC15(GIT_ERROR_REBASE, "this patch has already been applied");
		error = GIT_EAPPLIED;
		goto done;
	}

	if (!author)
		author = FUNC6(current_commit);

	if (!message) {
		message_encoding = FUNC12(current_commit);
		message = FUNC11(current_commit);
	}

	if ((error = FUNC7(&commit_content, rebase->repo, author, committer,
			message_encoding, message, tree, 1, (const git_commit **)&parent_commit)) < 0)
		goto done;

	if (rebase->options.signing_cb) {
		FUNC14();
		error = FUNC16(rebase->options.signing_cb(
			&commit_signature, &signature_field, FUNC3(&commit_content),
			rebase->options.payload), "commit signing_cb failed");
		if (error == GIT_PASSTHROUGH) {
			FUNC4(&commit_signature);
			FUNC4(&signature_field);
			FUNC14();
			error = GIT_OK;
		} else if (error < 0)
			goto done;
	}

	if (FUNC5(&commit_signature)) {
		FUNC0(FUNC2(&commit_signature));
		commit_signature_string = FUNC3(&commit_signature);
	}

	if (FUNC5(&signature_field)) {
		FUNC0(FUNC2(&signature_field));
		signature_field_string = FUNC3(&signature_field);
	}

	if ((error = FUNC8(&commit_id, rebase->repo,
			FUNC3(&commit_content), commit_signature_string,
			signature_field_string)))
		goto done;

	if ((error = FUNC10(&commit, rebase->repo, &commit_id)) < 0)
		goto done;

	*out = commit;

done:
	if (error < 0)
		FUNC9(commit);

	FUNC4(&commit_signature);
	FUNC4(&signature_field);
	FUNC4(&commit_content);
	FUNC9(current_commit);
	FUNC20(parent_tree);
	FUNC20(tree);

	return error;
}