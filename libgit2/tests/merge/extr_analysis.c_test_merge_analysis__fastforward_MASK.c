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

/* Variables and functions */
 int /*<<< orphan*/  FASTFORWARD_BRANCH ; 
 int GIT_MERGE_ANALYSIS_FASTFORWARD ; 
 int GIT_MERGE_ANALYSIS_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	git_merge_analysis_t merge_analysis;
	git_merge_preference_t merge_pref;

	FUNC0(&merge_analysis, &merge_pref, NULL, FASTFORWARD_BRANCH);
	FUNC1(GIT_MERGE_ANALYSIS_NORMAL|GIT_MERGE_ANALYSIS_FASTFORWARD, merge_analysis);
}