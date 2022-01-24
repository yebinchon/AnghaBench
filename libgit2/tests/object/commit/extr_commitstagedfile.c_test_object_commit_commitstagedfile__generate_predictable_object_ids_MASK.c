#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; scalar_t__ st_uid; scalar_t__ st_gid; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {scalar_t__ file_size; scalar_t__ uid; scalar_t__ gid; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,struct stat*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC20(void)
{
	git_index *index;
	const git_index_entry *entry;
	git_oid expected_blob_oid, tree_oid, expected_tree_oid, commit_oid, expected_commit_oid;
	git_signature *signature;
	git_tree *tree;
	git_buf buffer;

	/*
	 * The test below replicates the following git scenario
	 *
	 * $ echo "test" > test.txt
	 * $ git hash-object test.txt
	 * 9daeafb9864cf43055ae93beb0afd6c7d144bfa4
	 *
	 * $ git add .
	 * $ git commit -m "Initial commit"
	 *
	 * $ git log
	 * commit 1fe3126578fc4eca68c193e4a3a0a14a0704624d
	 * Author: nulltoken <emeric.fermas@gmail.com>
	 * Date:   Wed Dec 14 08:29:03 2011 +0100
	 *
	 *     Initial commit
	 *
	 * $ git show 1fe3 --format=raw
	 * commit 1fe3126578fc4eca68c193e4a3a0a14a0704624d
	 * tree 2b297e643c551e76cfa1f93810c50811382f9117
	 * author nulltoken <emeric.fermas@gmail.com> 1323847743 +0100
	 * committer nulltoken <emeric.fermas@gmail.com> 1323847743 +0100
	 * 
	 *     Initial commit
	 * 
	 * diff --git a/test.txt b/test.txt
	 * new file mode 100644
	 * index 0000000..9daeafb
	 * --- /dev/null
	 * +++ b/test.txt
	 * @@ -0,0 +1 @@
	 * +test
	 *
	 * $ git ls-tree 2b297
	 * 100644 blob 9daeafb9864cf43055ae93beb0afd6c7d144bfa4    test.txt
	 */

	FUNC2(FUNC12(&expected_commit_oid, "1fe3126578fc4eca68c193e4a3a0a14a0704624d"));
	FUNC2(FUNC12(&expected_tree_oid, "2b297e643c551e76cfa1f93810c50811382f9117"));
	FUNC2(FUNC12(&expected_blob_oid, "9daeafb9864cf43055ae93beb0afd6c7d144bfa4"));

	/*
	 * Add a new file to the index
	 */
	FUNC1("treebuilder/test.txt", "test\n");
	FUNC2(FUNC13(&index, repo));
	FUNC2(FUNC6(index, "test.txt"));

	entry = FUNC8(index, 0);

	FUNC0(FUNC11(&expected_blob_oid, &entry->id) == 0);

	/*
	 * Information about index entry should match test file
	 */
	{
		struct stat st;
		FUNC3(FUNC19("treebuilder/test.txt", &st));
		FUNC0(entry->file_size == st.st_size);
#ifndef _WIN32
		/*
		 * Windows doesn't populate these fields, and the signage is
		 * wrong in the Windows version of the struct, so lets avoid
		 * the "comparing signed and unsigned" compilation warning in
		 * that case.
		 */
		FUNC0(entry->uid == st.st_uid);
		FUNC0(entry->gid == st.st_gid);
#endif
	}

	/*
	 * Build the tree from the index
	 */
	FUNC2(FUNC9(&tree_oid, index));

	FUNC0(FUNC11(&expected_tree_oid, &tree_oid) == 0);

	/*
	 * Commit the staged file
	 */
	FUNC2(FUNC15(&signature, "nulltoken", "emeric.fermas@gmail.com", 1323847743, 60));
	FUNC2(FUNC17(&tree, repo, &tree_oid));

	FUNC18(&buffer, 0, sizeof(git_buf));
	FUNC2(FUNC10(&buffer, "Initial commit", 0, '#'));

	FUNC2(FUNC5(
		&commit_oid,
		repo,
		"HEAD",
		signature,
		signature,
		NULL,
		buffer.ptr,
		tree,
		0));

	FUNC0(FUNC11(&expected_commit_oid, &commit_oid) == 0);

	FUNC4(&buffer);
	FUNC14(signature);
	FUNC16(tree);
	FUNC7(index);
}