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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*) ; 

void FUNC15(void)
{
	git_diff *diff;
	git_tree *tree;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	struct stat st;
	git_patch *patch;

	g_repo = FUNC4("attr_index");

	tree = FUNC14(g_repo, "3812cfef3661"); /* HEAD */

	/* baseline - make sure there are no outstanding diffs */

	FUNC2(FUNC7(&diff, g_repo, tree, &opts));
	FUNC1(2, (int)FUNC6(diff));
	FUNC5(diff);

	/* empty contents of file */

	FUNC3("attr_index/README.txt", "");
	FUNC2(FUNC11("attr_index/README.txt", &st));
	FUNC1(0, (int)st.st_size);

	FUNC2(FUNC7(&diff, g_repo, tree, &opts));
	FUNC1(3, (int)FUNC6(diff));
	/* diffs are: .gitattributes, README.txt, sub/sub/.gitattributes */
	FUNC2(FUNC9(&patch, diff, 1));
	FUNC8(patch);
	FUNC5(diff);

	/* remove a file altogether */

	FUNC2(FUNC13("attr_index/README.txt"));
	FUNC0(!FUNC10("attr_index/README.txt"));

	FUNC2(FUNC7(&diff, g_repo, tree, &opts));
	FUNC1(3, (int)FUNC6(diff));
	FUNC2(FUNC9(&patch, diff, 1));
	FUNC8(patch);
	FUNC5(diff);

	FUNC12(tree);
}