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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int*,int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int) ; 

void FUNC9(void)
{
	int ignored, icase = 0, error;
	git_config *cfg;

	g_repo = FUNC3("empty_standard_repo");

	FUNC2(FUNC7(&cfg, g_repo));
	error = FUNC5(&icase, cfg, "core.ignorecase");
	FUNC4(cfg);
	if (error == GIT_ENOTFOUND)
		error = 0;

	FUNC2(error);

	FUNC2(FUNC8("empty_standard_repo/src", 0777));
	FUNC2(FUNC8("empty_standard_repo/src/src", 0777));
	FUNC1("empty_standard_repo/src/.gitignore", "src\n");
	FUNC1("empty_standard_repo/.gitignore", "");

	FUNC2(FUNC6(&ignored, g_repo, "src/test.txt"));
	FUNC0(0, ignored);
	FUNC2(FUNC6(&ignored, g_repo, "src/src/test.txt"));
	FUNC0(1, ignored);
	FUNC2(FUNC6(&ignored, g_repo, "src/foo/test.txt"));
	FUNC0(0, ignored);

	FUNC2(FUNC6(&ignored, g_repo, "SRC/src/test.txt"));
	FUNC0(icase, ignored);
	FUNC2(FUNC6(&ignored, g_repo, "src/SRC/test.txt"));
	FUNC0(icase, ignored);
}