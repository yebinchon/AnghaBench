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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (size_t) ; 

int FUNC7(const char *refname)
{
	const char *rest;

	if (FUNC3(refname, "refs/", &rest)) {
		char *buf;
		int result;
		size_t restlen = FUNC5(rest);

		/* rest must not be empty, or start or end with "/" */
		if (!restlen || *rest == '/' || rest[restlen - 1] == '/')
			return 0;

		/*
		 * Does the refname try to escape refs/?
		 * For example: refs/foo/../bar is safe but refs/foo/../../bar
		 * is not.
		 */
		buf = FUNC6(restlen);
		result = !FUNC2(buf, rest) && !FUNC4(buf, rest);
		FUNC0(buf);
		return result;
	}

	do {
		if (!FUNC1(*refname) && *refname != '_')
			return 0;
		refname++;
	} while (*refname);
	return 1;
}