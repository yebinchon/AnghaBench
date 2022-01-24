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
 char FUNC0 (char const) ; 

int FUNC1(const char *pattern, const char *host)
{
	for (;;) {
		char c = FUNC0(*pattern++);

		if (c == '\0')
			return *host ? -1 : 0;

		if (c == '*') {
			c = *pattern;
			/* '*' at the end matches everything left */
			if (c == '\0')
				return 0;

	/*
	 * We've found a pattern, so move towards the next matching
	 * char. The '.' is handled specially because wildcards aren't
	 * allowed to cross subdomains.
	 */

			while(*host) {
				char h = FUNC0(*host);
				if (c == h)
					return FUNC1(pattern, host++);
				if (h == '.')
					return FUNC1(pattern, host);
				host++;
			}
			return -1;
		}

		if (c != FUNC0(*host++))
			return -1;
	}

	return -1;
}