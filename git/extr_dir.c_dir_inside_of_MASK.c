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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const,char const) ; 
 scalar_t__ FUNC2 (char const) ; 

int FUNC3(const char *subdir, const char *dir)
{
	int offset = 0;

	FUNC0(dir && subdir && *dir && *subdir);

	while (*dir && *subdir && !FUNC1(*dir, *subdir)) {
		dir++;
		subdir++;
		offset++;
	}

	/* hel[p]/me vs hel[l]/yeah */
	if (*dir && *subdir)
		return -1;

	if (!*subdir)
		return !*dir ? offset : -1; /* same dir */

	/* foo/[b]ar vs foo/[] */
	if (FUNC2(dir[-1]))
		return FUNC2(subdir[-1]) ? offset : -1;

	/* foo[/]bar vs foo[] */
	return FUNC2(*subdir) ? offset + 1 : -1;
}