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
struct ref_filter {char** name_patterns; scalar_t__ ignore_case; } ;

/* Variables and functions */
 unsigned int WM_CASEFOLD ; 
 scalar_t__ FUNC0 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,unsigned int) ; 

__attribute__((used)) static int FUNC2(const struct ref_filter *filter, const char *refname)
{
	const char **patterns = filter->name_patterns;
	unsigned flags = 0;

	if (filter->ignore_case)
		flags |= WM_CASEFOLD;

	/*
	 * When no '--format' option is given we need to skip the prefix
	 * for matching refs of tags and branches.
	 */
	(void)(FUNC0(refname, "refs/tags/", &refname) ||
	       FUNC0(refname, "refs/heads/", &refname) ||
	       FUNC0(refname, "refs/remotes/", &refname) ||
	       FUNC0(refname, "refs/", &refname));

	for (; *patterns; patterns++) {
		if (!FUNC1(*patterns, refname, flags))
			return 1;
	}
	return 0;
}