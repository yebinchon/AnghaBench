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
 int /*<<< orphan*/  FUNC0 (char const**,size_t*) ; 

__attribute__((used)) static unsigned long FUNC1(char *line, unsigned long len)
{
	const char *cp;
	unsigned long allot;
	size_t l = len;

	cp = line;
	allot = l;
	while (0 < l) {
		(void) FUNC0(&cp, &l);
		if (!cp)
			break; /* truncated in the middle? */
	}
	return allot - l;
}