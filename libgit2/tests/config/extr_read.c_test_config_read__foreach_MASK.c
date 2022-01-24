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
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  cfg_callback_countdown ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  count_cfg_entries_and_compare_levels ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **) ; 

void FUNC8(void)
{
	git_config *cfg;
	int count, ret;

	FUNC3(FUNC7(&cfg));
	FUNC3(FUNC4(cfg, FUNC1("config/config9"),
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));
	FUNC3(FUNC4(cfg, FUNC1("config/config15"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));

	count = 0;
	FUNC3(FUNC5(cfg, count_cfg_entries_and_compare_levels, &count));
	FUNC0(7, count);

	count = 3;
	FUNC2(ret = FUNC5(cfg, cfg_callback_countdown, &count));
	FUNC0(-100, ret);

	FUNC6(cfg);
}