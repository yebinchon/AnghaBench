#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_6__ {char const* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_7__ {int /*<<< orphan*/  local; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CLONE_NO_LOCAL ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 TYPE_4__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 

void FUNC24(void)
{
	git_repository *stage;
	git_index_entry entry;
	git_index *index;
	git_odb *odb;
	git_oid tree_id;
	git_tree *tree;
	git_reference *tag;
	git_tree_entry *tentry;
	const char *file_path = "some/deep/path.txt";
	const char *file_content = "some content\n";
	const char *tag_name = "refs/tags/tree-tag";

	stage = FUNC3("testrepo.git");
	FUNC1(FUNC16(&odb, stage));
	FUNC1(FUNC7(&index));

	FUNC22(&entry, 0, sizeof(git_index_entry));
	entry.path = file_path;
	entry.mode = GIT_FILEMODE_BLOB;
	FUNC1(FUNC10(&entry.id, odb, file_content, FUNC23(file_content), GIT_OBJECT_BLOB));

	FUNC1(FUNC5(index, &entry));
	FUNC1(FUNC8(&tree_id, index, stage));
	FUNC1(FUNC11(&tag, stage, tag_name, &tree_id, 0, NULL));
	FUNC12(tag);
	FUNC9(odb);
	FUNC6(index);

	g_options.local = GIT_CLONE_NO_LOCAL;
	FUNC1(FUNC4(&g_repo, FUNC2(FUNC17(stage)), "./foo", &g_options));
	FUNC15(stage);

	FUNC1(FUNC13(&tag, g_repo, tag_name));
	FUNC1(FUNC21(&tree, g_repo, FUNC14(tag)));
	FUNC12(tag);

	FUNC1(FUNC18(&tentry, tree, file_path));
	FUNC19(tentry);
	FUNC20(tree);

	FUNC0("testrepo.git");
}