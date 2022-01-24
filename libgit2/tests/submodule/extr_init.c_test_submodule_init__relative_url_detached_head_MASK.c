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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_6__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 

void FUNC21(void)
{
	git_submodule *sm;
	git_config *cfg;
	git_buf absolute_url = GIT_BUF_INIT;
	const char *config_url;
	git_reference *head_ref = NULL;
	git_object *head_commit = NULL;

	g_repo = FUNC20();

	/* Put the parent repository into a detached head state. */
	FUNC2(FUNC13(&head_ref, g_repo));
	FUNC2(FUNC11(&head_commit, head_ref, GIT_OBJECT_COMMIT));

	FUNC2(FUNC14(g_repo, FUNC5((git_commit *)head_commit)));

	FUNC0(FUNC9(&absolute_url, FUNC15(g_repo)) > 0);
	FUNC2(FUNC4(&absolute_url, absolute_url.ptr, "testrepo.git"));

	FUNC2(FUNC18(&sm, g_repo, "testrepo"));

	/* verify that the .gitmodules is set with an absolute path*/
	FUNC1("../testrepo.git", FUNC19(sm));

	/* init and verify that absolute path is written to .git/config */
	FUNC2(FUNC17(sm, false));

	FUNC2(FUNC12(&cfg, g_repo));

	FUNC2(FUNC7(&config_url, cfg, "submodule.testrepo.url"));
	FUNC1(absolute_url.ptr, config_url);

	FUNC3(&absolute_url);
	FUNC6(cfg);
	FUNC8(head_commit);
	FUNC10(head_ref);
	FUNC16(sm);
}