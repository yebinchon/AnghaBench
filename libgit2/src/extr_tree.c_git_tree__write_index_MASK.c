#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {int /*<<< orphan*/  tree_pool; TYPE_3__* tree; scalar_t__ ignore_case; } ;
typedef  TYPE_1__ git_index ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_8__ {scalar_t__ entry_count; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int GIT_EUNMERGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(
	git_oid *oid, git_index *index, git_repository *repo)
{
	int ret;
	git_tree *tree;
	git_buf shared_buf = GIT_BUF_INIT;
	bool old_ignore_case = false;

	FUNC0(oid && index && repo);

	if (FUNC4(index)) {
		FUNC2(GIT_ERROR_INDEX,
			"cannot create a tree from a not fully merged index.");
		return GIT_EUNMERGED;
	}

	if (index->tree != NULL && index->tree->entry_count >= 0) {
		FUNC5(oid, &index->tree->oid);
		return 0;
	}

	/* The tree cache didn't help us; we'll have to write
	 * out a tree. If the index is ignore_case, we must
	 * make it case-sensitive for the duration of the tree-write
	 * operation. */

	if (index->ignore_case) {
		old_ignore_case = true;
		FUNC3(index, false);
	}

	ret = FUNC10(oid, repo, index, "", 0, &shared_buf);
	FUNC1(&shared_buf);

	if (old_ignore_case)
		FUNC3(index, true);

	index->tree = NULL;

	if (ret < 0)
		return ret;

	FUNC6(&index->tree_pool);

	if ((ret = FUNC9(&tree, repo, oid)) < 0)
		return ret;

	/* Read the tree cache into the index */
	ret = FUNC7(&index->tree, tree, &index->tree_pool);
	FUNC8(tree);

	return ret;
}