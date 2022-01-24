#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_rebase_operation ;
struct TYPE_9__ {int /*<<< orphan*/  repo; int /*<<< orphan*/  current; int /*<<< orphan*/  operations; } ;
typedef  TYPE_2__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EUNMERGED ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int GIT_OID_HEXSZ ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  REWRITTEN_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int,char*,int,char*,int,char*) ; 

__attribute__((used)) static int FUNC15(
	git_oid *commit_id,
	git_rebase *rebase,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message)
{
	git_rebase_operation *operation;
	git_reference *head = NULL;
	git_commit *head_commit = NULL, *commit = NULL;
	git_index *index = NULL;
	char old_idstr[GIT_OID_HEXSZ], new_idstr[GIT_OID_HEXSZ];
	int error;

	operation = FUNC1(rebase->operations, rebase->current);
	FUNC0(operation);

	if ((error = FUNC13(rebase->repo, false, true, GIT_EUNMERGED)) < 0 ||
		(error = FUNC10(&head, rebase->repo)) < 0 ||
		(error = FUNC9((git_object **)&head_commit, head, GIT_OBJECT_COMMIT)) < 0 ||
		(error = FUNC11(&index, rebase->repo)) < 0 ||
		(error = FUNC12(&commit, rebase, index, head_commit,
			author, committer, message_encoding, message)) < 0 ||
		(error = FUNC7(
			rebase->repo, NULL, "HEAD", FUNC3(commit), "rebase")) < 0)
		goto done;

	FUNC6(old_idstr, &operation->id);
	FUNC6(new_idstr, FUNC3(commit));

	if ((error = FUNC14(rebase, REWRITTEN_FILE, O_CREAT|O_WRONLY|O_APPEND,
		"%.*s %.*s\n", GIT_OID_HEXSZ, old_idstr, GIT_OID_HEXSZ, new_idstr)) < 0)
		goto done;

	FUNC5(commit_id, FUNC3(commit));

done:
	FUNC4(index);
	FUNC8(head);
	FUNC2(head_commit);
	FUNC2(commit);
	return error;
}