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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_SYMLINKS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 

__attribute__((used)) static void FUNC12(
	git_repository *repo,
	const char *path,
	const char *target)
{
	int symlinks;

	FUNC2(FUNC7(&symlinks, repo, GIT_CONFIGMAP_SYMLINKS));

	if (!symlinks) {
		FUNC3(path, target);
	} else {
		git_buf fullpath = GIT_BUF_INIT;
		char actual[1024];
		struct stat st;
		int len;

		FUNC2(
			FUNC6(&fullpath, FUNC8(g_repo), path));

		FUNC2(FUNC9(FUNC4(&fullpath), &st));
		FUNC1(FUNC0(st.st_mode));

		FUNC1((len = FUNC10(FUNC4(&fullpath), actual, 1024)) > 0);
		actual[len] = '\0';
		FUNC1(FUNC11(actual, target) == 0);

		FUNC5(&fullpath);
	}
}