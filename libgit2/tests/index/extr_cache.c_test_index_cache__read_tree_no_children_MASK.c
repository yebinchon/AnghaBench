#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_12__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_13__ {TYPE_4__* tree; } ;
typedef  TYPE_2__ git_index ;
struct TYPE_14__ {int /*<<< orphan*/  entry_count; int /*<<< orphan*/  children_count; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int) ; 

void FUNC13(void)
{
	git_index *index;
	git_index_entry entry;
	git_tree *tree;
	git_oid id;

	FUNC2(FUNC6(&index));
	FUNC0(index->tree == NULL);
	FUNC2(FUNC9(&id, "45dd856fdd4d89b884c340ba0e047752d9b085d6"));
	FUNC2(FUNC11(&tree, g_repo, &id));
	FUNC2(FUNC7(index, tree));
	FUNC10(tree);

	FUNC0(index->tree);
	FUNC0(FUNC8(&id, &index->tree->oid));
	FUNC1(0, index->tree->children_count);
	FUNC1(FUNC4(index), index->tree->entry_count);

	FUNC12(&entry, 0x0, sizeof(git_index_entry));
	entry.path = "new.txt";
	entry.mode = GIT_FILEMODE_BLOB;
	FUNC9(&entry.id, "d4bcc68acd4410bf836a39f20afb2c2ece09584e");

	FUNC2(FUNC3(index, &entry));
	FUNC1(-1, index->tree->entry_count);

	FUNC5(index);
}