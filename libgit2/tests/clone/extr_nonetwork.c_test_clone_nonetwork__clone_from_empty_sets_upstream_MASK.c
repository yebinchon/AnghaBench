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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_config *config;
	git_repository *repo;
	const char *str;

	/* Create an empty repo to clone from */
	FUNC3(&cleanup_repository, "./test1");
	FUNC2(FUNC9(&g_repo, "./test1", 0));
	FUNC3(&cleanup_repository, "./repowithunborn");
	FUNC2(FUNC4(&repo, "./test1", "./repowithunborn", NULL));

	FUNC2(FUNC7(&config, repo));

	FUNC2(FUNC6(&str, config, "branch.master.remote"));
	FUNC0("origin", str);
	FUNC2(FUNC6(&str, config, "branch.master.merge"));
	FUNC0("refs/heads/master", str);

	FUNC5(config);
	FUNC8(repo);
	FUNC1("./repowithunborn");
}