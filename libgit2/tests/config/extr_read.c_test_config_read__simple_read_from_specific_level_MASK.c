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

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	git_config *cfg, *cfg_specific;
	int i;
	int64_t l, expected = +9223372036854775803;

	FUNC5(FUNC13(&cfg));
	FUNC5(FUNC7(cfg, FUNC4("config/config18"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));
	FUNC5(FUNC7(cfg, FUNC4("config/config19"),
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));

	FUNC5(FUNC14(&cfg_specific, cfg, GIT_CONFIG_LEVEL_GLOBAL));

	FUNC5(FUNC10(&i, cfg_specific, "core.int32global"));
	FUNC2(28, i);
	FUNC5(FUNC11(&l, cfg_specific, "core.int64global"));
	FUNC0(l == expected);
	FUNC5(FUNC9(&i, cfg_specific, "core.boolglobal"));
	FUNC1(true, i);
	FUNC5(FUNC12(&buf, cfg_specific, "core.stringglobal"));
	FUNC3("I'm a global config value!", FUNC6(&buf));

	FUNC8(cfg_specific);
	FUNC8(cfg);
}