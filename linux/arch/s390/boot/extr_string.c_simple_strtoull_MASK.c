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
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 unsigned int FUNC3 (char const*) ; 

unsigned long long FUNC4(const char *cp, char **endp,
				   unsigned int base)
{
	unsigned long long result = 0;

	if (!base)
		base = FUNC3(cp);

	if (base == 16 && cp[0] == '0' && FUNC0(cp[1]) == 'x')
		cp += 2;

	while (FUNC2(*cp)) {
		unsigned int value;

		value = FUNC1(*cp) ? *cp - '0' : FUNC0(*cp) - 'a' + 10;
		if (value >= base)
			break;
		result = result * base + value;
		cp++;
	}
	if (endp)
		*endp = (char *)cp;

	return result;
}