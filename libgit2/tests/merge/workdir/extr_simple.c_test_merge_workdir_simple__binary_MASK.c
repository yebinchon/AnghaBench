#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC13(void)
{
	git_oid our_oid, their_oid, our_file_oid;
	git_commit *our_commit;
	git_annotated_commit *their_head;
	const git_index_entry *binary_entry;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "1c51d885170f57a0c4e8c69ff6363d91a5b51f85", 1, "binary" },
		{ 0100644, "23ed141a6ae1e798b2f721afedbe947c119111ba", 2, "binary" },
		{ 0100644, "836b8b82b26cab22eaaed8820877c76d6c8bca19", 3, "binary" },
	};

	FUNC1(FUNC10(&our_oid, "cc338e4710c9b257106b8d16d82f86458d5beaf1"));
	FUNC1(FUNC10(&their_oid, "ad01aebfdf2ac13145efafe3f9fcf798882f1730"));

	FUNC1(FUNC5(&our_commit, repo, &our_oid));
	FUNC1(FUNC11(repo, (git_object *)our_commit, GIT_RESET_HARD, NULL));

	FUNC1(FUNC3(&their_head, repo, &their_oid));

	FUNC1(FUNC8(repo, (const git_annotated_commit **)&their_head, 1, NULL, NULL));

	FUNC0(FUNC12(repo_index, merge_index_entries, 3));

	FUNC1(FUNC6(repo_index, "binary"));
	FUNC0((binary_entry = FUNC7(repo_index, "binary", 0)) != NULL);

	FUNC1(FUNC10(&our_file_oid, "23ed141a6ae1e798b2f721afedbe947c119111ba"));
	FUNC0(FUNC9(&binary_entry->id, &our_file_oid) == 0);

	FUNC2(their_head);
	FUNC4(our_commit);
}