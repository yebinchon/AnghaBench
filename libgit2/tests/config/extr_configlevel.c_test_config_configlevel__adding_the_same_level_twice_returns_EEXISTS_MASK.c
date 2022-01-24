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
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 

void FUNC7(void)
{
	int error;
	git_config *cfg;

	FUNC3(FUNC6(&cfg));
	FUNC3(FUNC4(cfg, FUNC1("config/config9"),
		GIT_CONFIG_LEVEL_LOCAL, NULL, 0));
	FUNC3(FUNC4(cfg, FUNC1("config/config15"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));
	error = FUNC4(cfg, FUNC1("config/config16"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0);

	FUNC2(error);
	FUNC0(GIT_EEXISTS, error);

	FUNC5(cfg);
}