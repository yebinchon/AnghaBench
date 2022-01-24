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
typedef  int /*<<< orphan*/  save_cwd ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static int FUNC7(char *to, int size, char *from)
{
	char save_cwd[256], *slash;
	int remaining;

	if (FUNC2(save_cwd, sizeof(save_cwd)) == NULL) {
		FUNC1("absolutize : unable to get cwd - errno = %d\n",
			   errno);
		return -1;
	}
	slash = FUNC6(from, '/');
	if (slash != NULL) {
		*slash = '\0';
		if (FUNC0(from)) {
			*slash = '/';
			FUNC1("absolutize : Can't cd to '%s' - "
				   "errno = %d\n", from, errno);
			return -1;
		}
		*slash = '/';
		if (FUNC2(to, size) == NULL) {
			FUNC1("absolutize : unable to get cwd of '%s' - "
			       "errno = %d\n", from, errno);
			return -1;
		}
		remaining = size - FUNC5(to);
		if (FUNC5(slash) + 1 > remaining) {
			FUNC1("absolutize : unable to fit '%s' into %d "
			       "chars\n", from, size);
			return -1;
		}
		FUNC3(to, slash);
	}
	else {
		if (FUNC5(save_cwd) + 1 + FUNC5(from) + 1 > size) {
			FUNC1("absolutize : unable to fit '%s' into %d "
			       "chars\n", from, size);
			return -1;
		}
		FUNC4(to, save_cwd);
		FUNC3(to, "/");
		FUNC3(to, from);
	}
	if (FUNC0(save_cwd)) {
		FUNC1("absolutize : Can't cd to '%s' - "
			   "errno = %d\n", save_cwd, errno);
		return -1;
	}
	return 0;
}