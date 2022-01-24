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

/* Variables and functions */
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8(void)
{
	git_repository *repo;
	static const char *bad_links[] = {
		"garbage\n", "gitdir", "gitdir:\n", "gitdir: foobar",
		"gitdir: ../invalid", "gitdir: ../invalid2",
		"gitdir: ../attr/.git with extra stuff",
		NULL
	};
	const char **scan;

	FUNC2("attr");

	FUNC1(FUNC7("invalid", 0777));
	FUNC1(FUNC3("invalid2/.git", 0777));

	for (scan = bad_links; *scan != NULL; scan++) {
		FUNC6("alternate", *scan);
		FUNC0(FUNC5(&repo, "alternate", 0, NULL));
	}

	FUNC4("invalid", NULL, GIT_RMDIR_REMOVE_FILES);
	FUNC4("invalid2", NULL, GIT_RMDIR_REMOVE_FILES);
}