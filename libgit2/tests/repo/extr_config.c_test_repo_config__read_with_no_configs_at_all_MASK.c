#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {char* ptr; int size; } ;

/* Variables and functions */
 int GIT_ABBREV_DEFAULT ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_ABBREV ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_XDG ; 
 int /*<<< orphan*/  GIT_OPT_SET_SEARCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 TYPE_1__ path ; 

void FUNC16(void)
{
	git_repository *repo;
	int val;

	FUNC2(FUNC7(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));
	FUNC2(FUNC7(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));
	FUNC2(FUNC7(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

	/* with none */

	FUNC4(FUNC15("empty_standard_repo/.git/config"));
	FUNC0(!FUNC9("empty_standard_repo/.git/config"));

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(GIT_ABBREV_DEFAULT, val);
	FUNC12(repo);

	/* with no local config, just system */

	FUNC5();

	FUNC4(FUNC14("alternate/1", 0777));
	FUNC2(FUNC6(&path, path.ptr, "1"));
	FUNC3("alternate/1/gitconfig", "[core]\n\tabbrev = 10\n");
	FUNC2(FUNC7(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(10, val);
	FUNC12(repo);

	/* with just xdg + system */

	FUNC4(FUNC14("alternate/2", 0777));
	path.ptr[path.size - 1] = '2';
	FUNC3("alternate/2/config", "[core]\n\tabbrev = 20\n");
	FUNC2(FUNC7(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(20, val);
	FUNC12(repo);

	/* with global + xdg + system */

	FUNC4(FUNC14("alternate/3", 0777));
	path.ptr[path.size - 1] = '3';
	FUNC3("alternate/3/.gitconfig", "[core]\n\tabbrev = 30\n");
	FUNC2(FUNC7(
		GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(30, val);
	FUNC12(repo);

	/* with all configs */

	FUNC3("empty_standard_repo/.git/config", "[core]\n\tabbrev = 40\n");

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(40, val);
	FUNC12(repo);

	/* with all configs but delete the files ? */

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(40, val);

	FUNC4(FUNC15("empty_standard_repo/.git/config"));
	FUNC0(!FUNC9("empty_standard_repo/.git/config"));

	FUNC4(FUNC15("alternate/1/gitconfig"));
	FUNC0(!FUNC9("alternate/1/gitconfig"));

	FUNC4(FUNC15("alternate/2/config"));
	FUNC0(!FUNC9("alternate/2/config"));

	FUNC4(FUNC15("alternate/3/.gitconfig"));
	FUNC0(!FUNC9("alternate/3/.gitconfig"));

	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(40, val);
	FUNC12(repo);

	/* reopen */

	FUNC0(!FUNC9("empty_standard_repo/.git/config"));
	FUNC0(!FUNC9("alternate/3/.gitconfig"));

	FUNC2(FUNC13(&repo, "empty_standard_repo"));
	FUNC11(repo);
	val = -1;
	FUNC2(FUNC10(&val, repo, GIT_CONFIGMAP_ABBREV));
	FUNC1(7, val);
	FUNC12(repo);

	FUNC0(!FUNC8("empty_standard_repo/.git/config"));
	FUNC0(!FUNC8("alternate/3/.gitconfig"));
}