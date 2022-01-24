#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_6__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 

void FUNC15(void)
{
	git_submodule *sm;
	git_config *cfg;
	git_buf absolute_url = GIT_BUF_INIT;
	const char *config_url;

	g_repo = FUNC14();

	FUNC0(FUNC7(&absolute_url, FUNC9(g_repo)) > 0);
	FUNC2(FUNC4(&absolute_url, absolute_url.ptr, "testrepo.git"));

	FUNC2(FUNC12(&sm, g_repo, "testrepo"));

	/* verify that the .gitmodules is set with an absolute path*/
	FUNC1("../testrepo.git", FUNC13(sm));

	/* init and verify that absolute path is written to .git/config */
	FUNC2(FUNC11(sm, false));

	FUNC2(FUNC8(&cfg, g_repo));

	FUNC2(FUNC6(&config_url, cfg, "submodule.testrepo.url"));
	FUNC1(absolute_url.ptr, config_url);

	FUNC3(&absolute_url);
	FUNC5(cfg);
	FUNC10(sm);
}