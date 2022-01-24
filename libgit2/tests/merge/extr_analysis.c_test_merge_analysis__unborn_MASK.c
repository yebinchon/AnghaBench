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
typedef  int /*<<< orphan*/  git_merge_preference_t ;
typedef  int /*<<< orphan*/  git_merge_analysis_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_MERGE_ANALYSIS_FASTFORWARD ; 
 int GIT_MERGE_ANALYSIS_UNBORN ; 
 int /*<<< orphan*/  NOFASTFORWARD_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC9(void)
{
	git_merge_analysis_t merge_analysis;
	git_merge_preference_t merge_pref;
	git_buf master = GIT_BUF_INIT;

	FUNC2(FUNC6(&master, FUNC7(repo), "refs/heads/master"));
	FUNC3(FUNC8(FUNC4(&master)));

	FUNC0(&merge_analysis, &merge_pref, NULL, NOFASTFORWARD_BRANCH);
	FUNC1(GIT_MERGE_ANALYSIS_FASTFORWARD|GIT_MERGE_ANALYSIS_UNBORN, merge_analysis);

	FUNC5(&master);
}