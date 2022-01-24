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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 scalar_t__ GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC10(void)
{
	git_config *cfg, *cfg_specific;
	int32_t i;

	FUNC1(FUNC8(&cfg, "config15"));
	FUNC1(FUNC5(&i, cfg, "core.dummy2"));
	FUNC0(i == 7);
	FUNC4(cfg);

	FUNC1(FUNC6(&cfg));
	FUNC1(FUNC2(cfg, "config9",
		GIT_CONFIG_LEVEL_LOCAL, NULL, 0));
	FUNC1(FUNC2(cfg, "config15",
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));

	FUNC1(FUNC7(&cfg_specific, cfg, GIT_CONFIG_LEVEL_GLOBAL));

	FUNC1(FUNC3(cfg_specific, "core.dummy2"));
	FUNC4(cfg);

	FUNC1(FUNC8(&cfg, "config15"));
	FUNC0(FUNC5(&i, cfg, "core.dummy2") == GIT_ENOTFOUND);
	FUNC1(FUNC9(cfg, "core.dummy2", 7));

	FUNC4(cfg_specific);
	FUNC4(cfg);
}