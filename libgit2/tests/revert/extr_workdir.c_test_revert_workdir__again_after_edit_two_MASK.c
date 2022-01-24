#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC14(void)
{
	git_buf diff_buf = GIT_BUF_INIT;
	git_config *config;
	git_oid head_commit_oid, revert_commit_oid;
	git_commit *head_commit, *revert_commit;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "a8c86221b400b836010567cc3593db6e96c1a83a", 1, "file.txt" },
		{ 0100644, "46ff0854663aeb2182b9838c8da68e33ac23bc1e", 2, "file.txt" },
		{ 0100644, "21a96a98ed84d45866e1de6e266fd3a61a4ae9dc", 3, "file.txt" },
	};

	FUNC2(FUNC10(&config, repo));
	FUNC2(FUNC7(config, "core.autocrlf", 0));

	FUNC2(FUNC9(&head_commit_oid, "75ec9929465623f17ff3ad68c0438ea56faba815"));
	FUNC2(FUNC5(&head_commit, repo, &head_commit_oid));
	FUNC2(FUNC11(repo, (git_object *)head_commit, GIT_RESET_HARD, NULL));

	FUNC2(FUNC9(&revert_commit_oid, "97e52d5e81f541080cd6b92829fb85bc4d81d90b"));
	FUNC2(FUNC5(&revert_commit, repo, &revert_commit_oid));

	FUNC2(FUNC12(repo, revert_commit, NULL));

	FUNC0(FUNC13(repo_index, merge_index_entries, 3));

	FUNC2(FUNC8(&diff_buf, "revert/file.txt"));
	FUNC1(
			"a\n" \
			"<<<<<<< HEAD\n" \
			"=======\n" \
			"a\n" \
			">>>>>>> parent of 97e52d5... Revert me\n" \
			"a\n" \
			"a\n" \
			"a\n" \
			"a\n" \
			"ab",
		diff_buf.ptr);

	FUNC4(revert_commit);
	FUNC4(head_commit);
	FUNC6(config);
	FUNC3(&diff_buf);
}