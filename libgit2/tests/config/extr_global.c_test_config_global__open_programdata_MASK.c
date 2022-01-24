#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_PROGRAMDATA ; 
 int /*<<< orphan*/  GIT_OPT_GET_SEARCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

void FUNC18(void)
{
	git_config *cfg;
	git_repository *repo;
	git_buf config_path = GIT_BUF_INIT;
	git_buf var_contents = GIT_BUF_INIT;

	if (FUNC3("GITTEST_INVASIVE_FS_STRUCTURE"))
		FUNC4();

	FUNC2(FUNC12(GIT_OPT_GET_SEARCH_PATH,
		GIT_CONFIG_LEVEL_PROGRAMDATA, &config_path));

	if (!FUNC13(config_path.ptr))
		FUNC2(FUNC17(config_path.ptr, 0777));

	FUNC2(FUNC6(&config_path, "/config"));

	FUNC2(FUNC10(&cfg, config_path.ptr));
	FUNC2(FUNC11(cfg, "programdata.var", "even higher level"));

	FUNC5(&config_path);
	FUNC7(cfg);

	FUNC9(&cfg);
	FUNC2(FUNC8(&var_contents, cfg, "programdata.var"));
	FUNC0("even higher level", var_contents.ptr);

	FUNC7(cfg);
	FUNC5(&var_contents);

	FUNC2(FUNC16(&repo, "./foo.git", true));
	FUNC2(FUNC14(&cfg, repo));
	FUNC2(FUNC8(&var_contents, cfg, "programdata.var"));
	FUNC0("even higher level", var_contents.ptr);

	FUNC7(cfg);
	FUNC5(&var_contents);
	FUNC15(repo);
	FUNC1("./foo.git");
}