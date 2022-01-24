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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC17(void)
{
	git_index_entry entry = { 0 };
	git_index *idx;
	git_odb *odb;
	git_object *commit;
	git_tree *tree;
	git_signature *sig;
	git_oid src_tree_id, tgt_tree_id;
	git_oid src_id, tgt_id;

	FUNC0(FUNC11(&odb, repo));
	FUNC0(FUNC10(&entry.id, odb, "", 0, GIT_OBJECT_BLOB));
	FUNC9(odb);

	entry.mode = GIT_FILEMODE_BLOB;
	FUNC0(FUNC5(&idx));
	FUNC0(FUNC14(&sig, "foo", "bar"));

	/* Create the old tree */
	entry.path = "README";
	FUNC0(FUNC2(idx, &entry));
	entry.path = "dir";
	FUNC0(FUNC2(idx, &entry));

	FUNC0(FUNC6(&src_tree_id, idx, repo));
	FUNC0(FUNC3(idx));

	FUNC0(FUNC16(&tree, repo, &src_tree_id));
	FUNC0(FUNC1(&src_id, repo, NULL, sig, sig, NULL, "foo", tree, 0, NULL));
	FUNC15(tree);

	/* Create the new tree */
	entry.path = "README";
	FUNC0(FUNC2(idx, &entry));
	entry.path = "dir/FILE";
	FUNC0(FUNC2(idx, &entry));

	FUNC0(FUNC6(&tgt_tree_id, idx, repo));
	FUNC0(FUNC16(&tree, repo, &tgt_tree_id));
	FUNC0(FUNC1(&tgt_id, repo, NULL, sig, sig, NULL, "foo", tree, 0, NULL));
	FUNC15(tree);
	FUNC4(idx);
	FUNC13(sig);

	/* Let's go to a known state of the src commit with the file named 'dir' */
	FUNC0(FUNC8(&commit, repo, &src_id, GIT_OBJECT_COMMIT));
	FUNC0(FUNC12(repo, commit, GIT_RESET_HARD, NULL));
	FUNC7(commit);

	/* And now we move over to the commit with the directory named 'dir' */
	FUNC0(FUNC8(&commit, repo, &tgt_id, GIT_OBJECT_COMMIT));
	FUNC0(FUNC12(repo, commit, GIT_RESET_HARD, NULL));
	FUNC7(commit);
}