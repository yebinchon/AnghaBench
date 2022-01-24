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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 

int FUNC6(const char *name)
{
	char *slash;

	if (FUNC4(name) && !FUNC1(errno))
		return -1;

	slash = FUNC3(name, '/');
	if (slash) {
		char *dirs = FUNC5(name);
		slash = dirs + (slash - name);
		do {
			*slash = '\0';
		} while (FUNC2(dirs) == 0 && (slash = FUNC3(dirs, '/')));
		FUNC0(dirs);
	}
	return 0;
}