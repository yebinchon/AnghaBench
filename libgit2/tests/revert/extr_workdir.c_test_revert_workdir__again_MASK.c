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
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(void)
{
	git_reference *head_ref;
	git_commit *orig_head;
	git_tree *reverted_tree;
	git_oid reverted_tree_oid, reverted_commit_oid;
	git_signature *signature;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "7731926a337c4eaba1e2187d90ebfa0a93659382", 0, "file1.txt" },
		{ 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
		{ 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
		{ 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
	};

	FUNC1(FUNC7(&head_ref, repo));
	FUNC1(FUNC6((git_object **)&orig_head, head_ref, GIT_OBJECT_COMMIT));
	FUNC1(FUNC8(repo, (git_object *)orig_head, GIT_RESET_HARD, NULL));

	FUNC1(FUNC9(repo, orig_head, NULL));

	FUNC0(FUNC14(repo_index, merge_index_entries, 4));

	FUNC1(FUNC4(&reverted_tree_oid, repo_index));
	FUNC1(FUNC13(&reverted_tree, repo, &reverted_tree_oid));

	FUNC1(FUNC11(&signature, "Reverter", "reverter@example.org", FUNC15(NULL), 0));
	FUNC1(FUNC2(&reverted_commit_oid, repo, "HEAD", signature, signature, NULL, "Reverted!", reverted_tree, 1, (const git_commit **)&orig_head));

	FUNC1(FUNC9(repo, orig_head, NULL));
	FUNC0(FUNC14(repo_index, merge_index_entries, 4));

	FUNC10(signature);
	FUNC12(reverted_tree);
	FUNC3(orig_head);
	FUNC5(head_ref);
}