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
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_APP ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*) ; 

void FUNC6(void)
{
	git_config *cfg;

	FUNC2(FUNC5(&cfg, "config/config11"));
	FUNC1(cfg, 2, 1);

	/* add another that has the _name entry */
	FUNC2(FUNC3(cfg, "config/config9", GIT_CONFIG_LEVEL_SYSTEM, NULL, 1));
	FUNC1(cfg, 3, 2);

	/* add another that does not have the _name entry */
	FUNC2(FUNC3(cfg, "config/config0", GIT_CONFIG_LEVEL_GLOBAL, NULL, 1));
	FUNC1(cfg, 3, 2);

	/* add another that does not have the _name entry at the end */
	FUNC2(FUNC3(cfg, "config/config1", GIT_CONFIG_LEVEL_APP, NULL, 1));
	FUNC1(cfg, 3, 2);

	/* drop original file */
	FUNC2(FUNC3(cfg, "config/config2", GIT_CONFIG_LEVEL_LOCAL, NULL, 1));
	FUNC1(cfg, 1, 1);

	/* drop other file with match */
	FUNC2(FUNC3(cfg, "config/config3", GIT_CONFIG_LEVEL_SYSTEM, NULL, 1));
	FUNC1(cfg, 0, 0);

	/* reload original file (add different place in order) */
	FUNC2(FUNC3(cfg, "config/config11", GIT_CONFIG_LEVEL_SYSTEM, NULL, 1));
	FUNC1(cfg, 2, 1);

	FUNC0(cfg, 2);

	FUNC4(cfg);
}