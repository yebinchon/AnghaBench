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
typedef  int git_merge_preference_t ;
typedef  int git_merge_analysis_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_MERGE_ANALYSIS_NORMAL ; 
 int GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY ; 
 int /*<<< orphan*/  NOFASTFORWARD_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC6(void)
{
	git_config *config;
	git_merge_analysis_t merge_analysis;
	git_merge_preference_t merge_pref;

	FUNC2(FUNC5(&config, repo));
	FUNC2(FUNC4(config, "merge.ff", "only"));

	FUNC0(&merge_analysis, &merge_pref, NULL, NOFASTFORWARD_BRANCH);
	FUNC1(GIT_MERGE_ANALYSIS_NORMAL, merge_analysis);

	FUNC1(GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY, (merge_pref & GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY));

	FUNC3(config);
}