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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_cfg_entries_and_compare_levels ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 

void FUNC6(void)
{
	git_config *cfg;
	int count;

	FUNC1(FUNC5(&cfg));
	/*
	 * Verify we can add non-existing files when the parent directory is not
	 * a directory.
	 */
	FUNC1(FUNC2(cfg, "/dev/null/.gitconfig",
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));

	count = 0;
	FUNC1(FUNC3(cfg, count_cfg_entries_and_compare_levels, &count));
	FUNC0(0, count);

	FUNC4(cfg);
}