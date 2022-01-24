#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_config *cfg;
	git_config *single_level_cfg;
	git_buf buf = {0};

	FUNC2(FUNC7(&cfg));
	FUNC2(FUNC4(cfg, FUNC1("config/config18"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));
	FUNC2(FUNC4(cfg, FUNC1("config/config19"),
		GIT_CONFIG_LEVEL_LOCAL, NULL, 0));

	FUNC2(FUNC8(&single_level_cfg, cfg, GIT_CONFIG_LEVEL_LOCAL));

	FUNC5(cfg);

	FUNC2(FUNC6(&buf, single_level_cfg, "core.stringglobal"));
	FUNC0("don't find me!", buf.ptr);

	FUNC3(&buf);
	FUNC5(single_level_cfg);
}