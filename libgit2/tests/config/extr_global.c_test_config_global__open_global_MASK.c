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
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_XDG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_config *cfg, *global, *selected, *dummy;
	int32_t value;

	FUNC2("home/.gitconfig", "[global]\n  test = 4567\n");

	FUNC3(FUNC6(&cfg));
	FUNC3(FUNC5(&value, cfg, "global.test"));
	FUNC0(4567, value);

	FUNC3(FUNC8(&global, cfg, GIT_CONFIG_LEVEL_GLOBAL));
	FUNC3(FUNC5(&value, global, "global.test"));
	FUNC0(4567, value);

	FUNC1(FUNC8(&dummy, cfg, GIT_CONFIG_LEVEL_XDG));

	FUNC3(FUNC7(&selected, cfg));
	FUNC3(FUNC5(&value, selected, "global.test"));
	FUNC0(4567, value);

	FUNC4(selected);
	FUNC4(global);
	FUNC4(cfg);
}