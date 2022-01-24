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
 scalar_t__ FUNC0 (char const*,char) ; 

char *FUNC1(char **end, const char *sep)
{
	char *ptr = *end;

	while (*ptr && FUNC0(sep, *ptr))
		++ptr;

	if (*ptr) {
		char *start = ptr;
		*end = start + 1;

		while (**end && !FUNC0(sep, **end))
			++*end;

		if (**end) {
			**end = '\0';
			++*end;
		}

		return start;
	}

	return NULL;
}