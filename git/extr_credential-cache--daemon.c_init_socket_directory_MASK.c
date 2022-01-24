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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  permissions_advice ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct stat*) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(const char *path)
{
	struct stat st;
	char *path_copy = FUNC9(path);
	char *dir = FUNC4(path_copy);

	if (!FUNC8(dir, &st)) {
		if (st.st_mode & 077)
			FUNC2(FUNC0(permissions_advice), dir);
	} else {
		/*
		 * We must be sure to create the directory with the correct mode,
		 * not just chmod it after the fact; otherwise, there is a race
		 * condition in which somebody can chdir to it, sleep, then try to open
		 * our protected socket.
		 */
		if (FUNC7(dir) < 0)
			FUNC3("unable to create directories for '%s'", dir);
		if (FUNC6(dir, 0700) < 0)
			FUNC3("unable to mkdir '%s'", dir);
	}

	if (FUNC1(dir))
		/*
		 * We don't actually care what our cwd is; we chdir here just to
		 * be a friendly daemon and avoid tying up our original cwd.
		 * If this fails, it's OK to just continue without that benefit.
		 */
		;

	FUNC5(path_copy);
}