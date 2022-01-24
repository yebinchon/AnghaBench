#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_13__ {struct TYPE_13__* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_OPT_GET_SEARCH_PATH ; 
 int /*<<< orphan*/  GIT_OPT_SET_SEARCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

void FUNC13(void)
{
	git_config *cfg;
	git_buf path = GIT_BUF_INIT;
	git_buf old_path = GIT_BUF_INIT;
	git_buf home_path = GIT_BUF_INIT;
	git_buf expected_path = GIT_BUF_INIT;

	FUNC3(FUNC12("fakehome", 0777));
	FUNC3(FUNC11(&home_path, "fakehome", NULL));
	FUNC3(FUNC9(GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, &old_path));
	FUNC3(FUNC9(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, home_path.ptr));
	FUNC2("./testconfig", "[some]\n path = ~/somefile");
	FUNC3(FUNC10(&expected_path, "somefile", home_path.ptr, NULL));

	FUNC3(FUNC8(&cfg, "./testconfig"));
	FUNC3(FUNC7(&path, cfg, "some.path"));
	FUNC0(expected_path.ptr, path.ptr);
	FUNC4(&path);

	FUNC2("./testconfig", "[some]\n path = ~/");
	FUNC3(FUNC10(&expected_path, "", home_path.ptr, NULL));

	FUNC3(FUNC7(&path, cfg, "some.path"));
	FUNC0(expected_path.ptr, path.ptr);
	FUNC4(&path);

	FUNC2("./testconfig", "[some]\n path = ~");
	FUNC3(FUNC5(&expected_path, home_path.ptr));

	FUNC3(FUNC7(&path, cfg, "some.path"));
	FUNC0(expected_path.ptr, path.ptr);
	FUNC4(&path);

	FUNC2("./testconfig", "[some]\n path = ~user/foo");
	FUNC1(FUNC7(&path, cfg, "some.path"));

	FUNC3(FUNC9(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, old_path.ptr));
	FUNC4(&old_path);
	FUNC4(&home_path);
	FUNC4(&expected_path);
	FUNC6(cfg);
}