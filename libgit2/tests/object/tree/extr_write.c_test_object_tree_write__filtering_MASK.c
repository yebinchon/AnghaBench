#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_treebuilder ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_2__ {int /*<<< orphan*/  attr; scalar_t__ filename; } ;

/* Variables and functions */
 TYPE_1__* _entries ; 
 int /*<<< orphan*/  blob_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  treebuilder_filter_prefixed ; 

void FUNC14(void)
{
	git_treebuilder *builder;
	int i;
	git_oid entry_oid, tree_oid;
	git_tree *tree;

	FUNC3(&entry_oid, blob_oid);

	FUNC2(FUNC12(&builder, g_repo, NULL));

	for (i = 0; _entries[i].filename; ++i)
		FUNC2(FUNC11(NULL,
			builder, _entries[i].filename, &entry_oid, _entries[i].attr));

	FUNC1(6, (int)FUNC7(builder));

	FUNC0(FUNC10(builder, "apple") != NULL);
	FUNC0(FUNC10(builder, "aardvark") != NULL);
	FUNC0(FUNC10(builder, "last") != NULL);

	FUNC8(builder, treebuilder_filter_prefixed, "apple");

	FUNC1(4, (int)FUNC7(builder));

	FUNC0(FUNC10(builder, "apple") == NULL);
	FUNC0(FUNC10(builder, "aardvark") != NULL);
	FUNC0(FUNC10(builder, "last") != NULL);

	FUNC8(builder, treebuilder_filter_prefixed, "a");

	FUNC1(2, (int)FUNC7(builder));

	FUNC0(FUNC10(builder, "aardvark") == NULL);
	FUNC0(FUNC10(builder, "last") != NULL);

	FUNC2(FUNC13(&tree_oid, builder));

	FUNC9(builder);

	FUNC2(FUNC6(&tree, g_repo, &tree_oid));

	FUNC1(2, (int)FUNC4(tree));

	FUNC5(tree);
}