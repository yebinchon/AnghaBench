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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_STATUS_IGNORED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,int /*<<< orphan*/ ,char*) ; 

void FUNC9(void)
{
	unsigned int flags;
	bool ignore_case;
	git_index *index;

	g_repo = FUNC4("empty_standard_repo");
	FUNC3("empty_standard_repo/.gitignore", "a.txt\n");

	FUNC1("empty_standard_repo/A.txt", "Differs in case");

	FUNC2(FUNC7(&index, g_repo));
	ignore_case = (FUNC5(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0;
	FUNC6(index);

	FUNC2(FUNC8(&flags, g_repo, "A.txt"));
	FUNC0(flags == ignore_case ? GIT_STATUS_IGNORED : GIT_STATUS_WT_NEW);
}