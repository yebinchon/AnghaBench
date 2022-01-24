#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int annotated_count; char** heads; int /*<<< orphan*/ ** annotated; } ;
typedef  TYPE_1__ merge_options ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_5__ {int /*<<< orphan*/ * message; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 char* MERGE_COMMIT_MSG ; 
 int /*<<< orphan*/ ** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const**,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ **,char*,char*) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC18 (size_t) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 void* FUNC20 (char*,size_t,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC21(git_repository *repo, git_index *index, merge_options *opts)
{
	git_oid tree_oid, commit_oid;
	git_tree *tree;
	git_signature *sign;
	git_reference *merge_ref = NULL;
	git_annotated_commit *merge_commit;
	git_reference *head_ref;
	git_commit **parents = FUNC0(opts->annotated_count + 1, sizeof(git_commit *));
	const char *msg_target = NULL;
	size_t msglen = 0;
	char *msg;
	size_t i;
	int err;

	/* Grab our needed references */
	FUNC1(FUNC14(&head_ref, repo), "failed to get repo HEAD", NULL);
	if (FUNC19(&merge_commit, repo, opts->heads[0])) {
		FUNC2(stderr, "failed to resolve refish %s", opts->heads[0]);
		FUNC3(parents);
		return -1;
	}

	/* Maybe that's a ref, so DWIM it */
	err = FUNC11(&merge_ref, repo, opts->heads[0]);
	FUNC1(err, "failed to DWIM reference", FUNC8()->message);

	/* Grab a signature */
	FUNC1(FUNC16(&sign, "Me", "me@example.com"), "failed to create signature", NULL);

#define MERGE_COMMIT_MSG "Merge %s '%s'"
	/* Prepare a standard merge commit message */
	if (merge_ref != NULL) {
		FUNC1(FUNC5(&msg_target, merge_ref), "failed to get branch name of merged ref", NULL);
	} else {
		msg_target = FUNC10(FUNC4(merge_commit));
	}

	msglen = FUNC20(NULL, 0, MERGE_COMMIT_MSG, (merge_ref ? "branch" : "commit"), msg_target);
	if (msglen > 0) msglen++;
	msg = FUNC18(msglen);
	err = FUNC20(msg, msglen, MERGE_COMMIT_MSG, (merge_ref ? "branch" : "commit"), msg_target);

	/* This is only to silence the compiler */
	if (err < 0) goto cleanup;

	/* Setup our parent commits */
	err = FUNC13((git_object **)&parents[0], head_ref, GIT_OBJECT_COMMIT);
	FUNC1(err, "failed to peel head reference", NULL);
	for (i = 0; i < opts->annotated_count; i++) {
		FUNC7(&parents[i + 1], repo, FUNC4(opts->annotated[i]));
	}

	/* Prepare our commit tree */
	FUNC1(FUNC9(&tree_oid, index), "failed to write merged tree", NULL);
	FUNC1(FUNC17(&tree, repo, &tree_oid), "failed to lookup tree", NULL);

	/* Commit time ! */
	err = FUNC6(&commit_oid,
	                        repo, FUNC12(head_ref),
	                        sign, sign,
	                        NULL, msg,
	                        tree,
	                        opts->annotated_count + 1, (const git_commit **)parents);
	FUNC1(err, "failed to create commit", NULL);

	/* We're done merging, cleanup the repository state */
	FUNC15(repo);

cleanup:
	FUNC3(parents);
	return err;
}