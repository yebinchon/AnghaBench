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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

void FUNC7(void)
{
	git_config *cfg;
	int32_t i;

	FUNC2(FUNC6(&cfg));
	FUNC2(FUNC3(cfg, FUNC1("config/config9"),
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));
	FUNC2(FUNC3(cfg, FUNC1("config/config15"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));
	FUNC2(FUNC3(cfg, FUNC1("config/config16"),
		GIT_CONFIG_LEVEL_LOCAL, NULL, 0));

	FUNC2(FUNC5(&i, cfg, "core.dummy2"));
	FUNC0(28, i);

	FUNC4(cfg);

	FUNC2(FUNC6(&cfg));
	FUNC2(FUNC3(cfg, FUNC1("config/config9"),
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));
	FUNC2(FUNC3(cfg, FUNC1("config/config15"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));

	FUNC2(FUNC5(&i, cfg, "core.dummy2"));
	FUNC0(7, i);

	FUNC4(cfg);
}