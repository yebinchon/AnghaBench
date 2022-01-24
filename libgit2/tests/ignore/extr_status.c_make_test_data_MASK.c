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

/* Variables and functions */
 int GIT_MKDIR_PATH ; 
 int GIT_MKDIR_SKIP_LAST ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *reponame, const char **files)
{
	const char **scan;
	size_t repolen = FUNC4(reponame) + 1;

	g_repo = FUNC2(reponame);

	for (scan = files; *scan != NULL; ++scan) {
		FUNC1(FUNC3(
			*scan + repolen, reponame,
			0777, GIT_MKDIR_PATH | GIT_MKDIR_SKIP_LAST, NULL));
		FUNC0(*scan, "contents");
	}
}