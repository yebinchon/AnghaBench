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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_XDG ; 
 int /*<<< orphan*/  GIT_OPT_SET_SEARCH_PATH ; 
 int /*<<< orphan*/  GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*) ; 
 TYPE_1__ path ; 

void FUNC10(void)
{
	git_repository *repo;
	git_config *config, *global;

	FUNC0(FUNC2(
		&path, "%c%s", GIT_PATH_LIST_SEPARATOR, "dummy"));

	FUNC0(FUNC6(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));
	FUNC0(FUNC6(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));
	FUNC0(FUNC6(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

	FUNC1(&path);

	FUNC0(FUNC9(&repo, "empty_standard_repo"));
	FUNC0(FUNC7(&config, repo));
	FUNC0(FUNC4(
		&global, config, GIT_CONFIG_LEVEL_GLOBAL));

	FUNC0(FUNC5(global, "test.set", "42"));

	FUNC3(global);
	FUNC3(config);
	FUNC8(repo);
}