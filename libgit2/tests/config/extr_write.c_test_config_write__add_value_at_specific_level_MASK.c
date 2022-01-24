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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC20(void)
{
	git_config *cfg, *cfg_specific;
	int i;
	int64_t l, expected = +9223372036854775803;
	git_buf buf = GIT_BUF_INIT;

	/* open config15 as global level config file */
	FUNC4(FUNC13(&cfg));
	FUNC4(FUNC7(cfg, "config9",
		GIT_CONFIG_LEVEL_LOCAL, NULL, 0));
	FUNC4(FUNC7(cfg, "config15",
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));

	FUNC4(FUNC14(&cfg_specific, cfg, GIT_CONFIG_LEVEL_GLOBAL));

	FUNC4(FUNC17(cfg_specific, "core.int32global", 28));
	FUNC4(FUNC18(cfg_specific, "core.int64global", expected));
	FUNC4(FUNC16(cfg_specific, "core.boolglobal", true));
	FUNC4(FUNC19(cfg_specific, "core.stringglobal", "I'm a global config value!"));
	FUNC8(cfg_specific);
	FUNC8(cfg);

	/* open config15 as local level config file */
	FUNC4(FUNC15(&cfg, "config15"));

	FUNC4(FUNC10(&i, cfg, "core.int32global"));
	FUNC2(28, i);
	FUNC4(FUNC11(&l, cfg, "core.int64global"));
	FUNC0(l == expected);
	FUNC4(FUNC9(&i, cfg, "core.boolglobal"));
	FUNC1(true, i);
	FUNC4(FUNC12(&buf, cfg, "core.stringglobal"));
	FUNC3("I'm a global config value!", FUNC5(&buf));

	FUNC6(&buf);
	FUNC8(cfg);
}