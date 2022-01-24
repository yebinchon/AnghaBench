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
typedef  enum uri_part { ____Placeholder_uri_part } uri_part ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 unsigned int EVHTTP_URI_NONCONFORMANT ; 
 scalar_t__ FUNC1 (char) ; 
#define  PART_FRAGMENT 130 
#define  PART_PATH 129 
#define  PART_QUERY 128 
 int /*<<< orphan*/  SUBDELIMS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(char *cp, enum uri_part part, unsigned flags)
{
	if (flags & EVHTTP_URI_NONCONFORMANT) {
		/* If NONCONFORMANT:
		 *   Path is everything up to a # or ? or nul.
		 *   Query is everything up a # or nul
		 *   Fragment is everything up to a nul.
		 */
		switch (part) {
		case PART_PATH:
			while (*cp && *cp != '#' && *cp != '?')
				++cp;
			break;
		case PART_QUERY:
			while (*cp && *cp != '#')
				++cp;
			break;
		case PART_FRAGMENT:
			cp += FUNC3(cp);
			break;
		};
		return cp;
	}

	while (*cp) {
		if (FUNC0(*cp) ||
		    FUNC2(SUBDELIMS, *cp) ||
		    *cp == ':' || *cp == '@' || *cp == '/')
			++cp;
		else if (*cp == '%' && FUNC1(cp[1]) &&
		    FUNC1(cp[2]))
			cp += 3;
		else if (*cp == '?' && part != PART_PATH)
			++cp;
		else
			return cp;
	}
	return cp;
}