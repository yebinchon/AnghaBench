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
struct argv_array {char const** argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* SHELL_PATH ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static const char **FUNC6(struct argv_array *out, const char **argv)
{
	if (!argv[0])
		FUNC0("shell command is empty");

	if (FUNC4(argv[0], "|&;<>()$`\\\"' \t\n*?[#~=%") != FUNC5(argv[0])) {
#ifndef GIT_WINDOWS_NATIVE
		FUNC1(out, SHELL_PATH);
#else
		argv_array_push(out, "sh");
#endif
		FUNC1(out, "-c");

		/*
		 * If we have no extra arguments, we do not even need to
		 * bother with the "$@" magic.
		 */
		if (!argv[1])
			FUNC1(out, argv[0]);
		else
			FUNC2(out, "%s \"$@\"", argv[0]);
	}

	FUNC3(out, argv);
	return out->argv;
}