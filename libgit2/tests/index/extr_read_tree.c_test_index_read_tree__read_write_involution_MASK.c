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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

void FUNC16(void)
{
	git_repository *repo;
	git_index *index;
	git_oid tree_oid;
	git_tree *tree;
	git_oid expected;

	FUNC15("read_tree", 0700);

	FUNC4(FUNC12(&repo, "./read_tree", 0));
	FUNC4(FUNC11(&index, repo));

	FUNC0(FUNC6(index) == 0);

	FUNC15("./read_tree/abc", 0700);

	/* Sort order: '-' < '/' < '_' */
	FUNC3("./read_tree/abc-d", NULL);
	FUNC3("./read_tree/abc/d", NULL);
	FUNC3("./read_tree/abc_d", NULL);

	FUNC4(FUNC5(index, "abc-d"));
	FUNC4(FUNC5(index, "abc_d"));
	FUNC4(FUNC5(index, "abc/d"));

	/* write-tree */
	FUNC4(FUNC9(&expected, index));

	/* read-tree */
	FUNC14(&tree, repo, &expected);
	FUNC4(FUNC8(index, tree));
	FUNC13(tree);

	FUNC4(FUNC9(&tree_oid, index));
	FUNC1(&expected, &tree_oid);

	FUNC7(index);
	FUNC10(repo);

	FUNC2("read_tree");
}