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
typedef  int /*<<< orphan*/  git_regexp ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_REGEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(git_regexp *regex, const char *pattern)
{
	int error;

	if (*pattern == '\0') {
		FUNC0(GIT_ERROR_REGEX, "empty pattern");
		return GIT_EINVALIDSPEC;
	}

	error = FUNC1(regex, pattern, 0);
	if (!error)
		return 0;

	FUNC2(regex);

	return error;
}