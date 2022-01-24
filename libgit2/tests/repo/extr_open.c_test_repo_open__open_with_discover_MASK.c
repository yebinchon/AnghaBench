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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

void FUNC10(void)
{
	static const char *variants[] = {
		"attr", "attr/", "attr/.git", "attr/.git/",
		"attr/sub", "attr/sub/", "attr/sub/sub", "attr/sub/sub/",
		NULL
	};
	git_repository *repo;
	const char **scan;

	FUNC2("attr");
	FUNC3(FUNC9("attr/.gitted", "attr/.git"));

	for (scan = variants; *scan != NULL; scan++) {
		FUNC3(FUNC6(&repo, *scan, 0, NULL));
		FUNC0(FUNC4(FUNC7(repo), "attr/.git/") == 0);
		FUNC0(FUNC4(FUNC8(repo), "attr/") == 0);
		FUNC5(repo);
	}

	FUNC1("attr");
}