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
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(void)
{
	git_commit *head, *commit;
	git_tree *reverted_tree;
	git_oid head_oid, revert_oid, reverted_tree_oid, reverted_commit_oid;
	git_signature *signature;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 0, "file1.txt" },
		{ 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
		{ 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
		{ 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
	};

	struct merge_index_entry second_revert_entries[] = {
		{ 0100644, "3a3ef367eaf3fe79effbfb0a56b269c04c2b59fe", 1, "file1.txt" },
		{ 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 2, "file1.txt" },
		{ 0100644, "747726e021bc5f44b86de60e3032fd6f9f1b8383", 3, "file1.txt" },
		{ 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
		{ 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
		{ 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
	};

	FUNC6(&head_oid, "72333f47d4e83616630ff3b0ffe4c0faebcc3c45");
	FUNC1(FUNC4(&head, repo, &head_oid));
	FUNC1(FUNC7(repo, (git_object *)head, GIT_RESET_HARD, NULL));

	FUNC6(&revert_oid, "d1d403d22cbe24592d725f442835cf46fe60c8ac");
	FUNC1(FUNC4(&commit, repo, &revert_oid));
	FUNC1(FUNC8(repo, commit, NULL));

	FUNC0(FUNC13(repo_index, merge_index_entries, 4));

	FUNC1(FUNC5(&reverted_tree_oid, repo_index));
	FUNC1(FUNC12(&reverted_tree, repo, &reverted_tree_oid));

	FUNC1(FUNC10(&signature, "Reverter", "reverter@example.org", FUNC14(NULL), 0));
	FUNC1(FUNC2(&reverted_commit_oid, repo, "HEAD", signature, signature, NULL, "Reverted!", reverted_tree, 1, (const git_commit **)&head));

	FUNC1(FUNC8(repo, commit, NULL));
	FUNC0(FUNC13(repo_index, second_revert_entries, 6));

	FUNC9(signature);
	FUNC11(reverted_tree);
	FUNC3(commit);
	FUNC3(head);
}