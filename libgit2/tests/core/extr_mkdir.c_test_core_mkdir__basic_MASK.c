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
 int GIT_MKDIR_EXCL ; 
 int GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_basic_dirs ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 (char*) ; 

void FUNC6(void)
{
	FUNC3(cleanup_basic_dirs, NULL);

	/* make a directory */
	FUNC0(!FUNC5("d0"));
	FUNC2(FUNC4("d0", 0755, 0));
	FUNC0(FUNC5("d0"));

	/* make a path */
	FUNC0(!FUNC5("d1"));
	FUNC2(FUNC4("d1/d1.1/d1.2", 0755, GIT_MKDIR_PATH));
	FUNC0(FUNC5("d1"));
	FUNC0(FUNC5("d1/d1.1"));
	FUNC0(FUNC5("d1/d1.1/d1.2"));

	/* make a dir exclusively */
	FUNC0(!FUNC5("d2"));
	FUNC2(FUNC4("d2", 0755, GIT_MKDIR_EXCL));
	FUNC0(FUNC5("d2"));

	/* make exclusive failure */
	FUNC1(FUNC4("d2", 0755, GIT_MKDIR_EXCL));

	/* make a path exclusively */
	FUNC0(!FUNC5("d3"));
	FUNC2(FUNC4("d3/d3.1/d3.2", 0755, GIT_MKDIR_PATH | GIT_MKDIR_EXCL));
	FUNC0(FUNC5("d3"));
	FUNC0(FUNC5("d3/d3.1/d3.2"));

	/* make exclusive path failure */
	FUNC1(FUNC4("d3/d3.1/d3.2", 0755, GIT_MKDIR_PATH | GIT_MKDIR_EXCL));
	/* ??? Should EXCL only apply to the last item in the path? */

	/* path with trailing slash? */
	FUNC0(!FUNC5("d4"));
	FUNC2(FUNC4("d4/d4.1/", 0755, GIT_MKDIR_PATH));
	FUNC0(FUNC5("d4/d4.1"));
}