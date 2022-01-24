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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 

void FUNC12(void)
{
	git_reference *head_ref;
	git_commit *head_commit, *revert_commit;
	git_oid revert_oid;
	git_index *index;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "7731926a337c4eaba1e2187d90ebfa0a93659382", 1, "file1.txt" },
		{ 0100644, "4b8fcff56437e60f58e9a6bc630dd242ebf6ea2c", 2, "file1.txt" },
		{ 0100644, "3a3ef367eaf3fe79effbfb0a56b269c04c2b59fe", 3, "file1.txt" },
		{ 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
		{ 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
		{ 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
	};

	FUNC6(&revert_oid, "72333f47d4e83616630ff3b0ffe4c0faebcc3c45");

	FUNC1(FUNC9(&head_ref, repo));
	FUNC1(FUNC8((git_object **)&head_commit, head_ref, GIT_OBJECT_COMMIT));

	FUNC1(FUNC3(&revert_commit, repo, &revert_oid));
	FUNC1(FUNC10(&index, repo, revert_commit, head_commit, 0, NULL));

	FUNC0(FUNC5(index));
	FUNC0(FUNC11(index, merge_index_entries, 6));

	FUNC2(revert_commit);
	FUNC2(head_commit);
	FUNC7(head_ref);
	FUNC4(index);
}