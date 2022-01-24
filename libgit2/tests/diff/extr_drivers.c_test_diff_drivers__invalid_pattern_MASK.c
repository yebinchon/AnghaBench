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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_config *cfg;
	git_index *idx;
	git_diff *diff;
	git_patch *patch;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;

	g_repo = FUNC2("userdiff");
	FUNC0("userdiff/.gitattributes", "*.storyboard diff=storyboard\n");

	FUNC1(FUNC9(&cfg, g_repo));
	FUNC1(FUNC3(cfg, "diff.storyboard.xfuncname", "<!--(.*?)-->"));

	FUNC0("userdiff/dummy.storyboard", "");
	FUNC1(FUNC10(&idx, g_repo));
	FUNC1(FUNC6(idx, "dummy.storyboard"));
	FUNC0("userdiff/dummy.storyboard", "some content\n");

	FUNC1(FUNC5(&diff, g_repo, NULL, &opts));
	FUNC1(FUNC8(&patch, diff, 0));

	FUNC7(patch);
	FUNC4(diff);
}