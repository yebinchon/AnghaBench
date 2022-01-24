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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct stat*) ; 
 char* FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 

int FUNC7(const char *prefix, const char *arg)
{
	char *to_free = NULL;
	struct stat st;

	if (FUNC6(arg, ":/", &arg)) {
		if (!*arg) /* ":/" is root dir, always exists */
			return 1;
		prefix = NULL;
	} else if (FUNC6(arg, ":!", &arg) ||
		   FUNC6(arg, ":^", &arg)) {
		if (!*arg) /* excluding everything is silly, but allowed */
			return 1;
	}

	if (prefix)
		arg = to_free = FUNC5(prefix, arg);

	if (!FUNC4(arg, &st)) {
		FUNC2(to_free);
		return 1; /* file exists */
	}
	if (FUNC3(errno)) {
		FUNC2(to_free);
		return 0; /* file does not exist */
	}
	FUNC1(FUNC0("failed to stat '%s'"), arg);
}