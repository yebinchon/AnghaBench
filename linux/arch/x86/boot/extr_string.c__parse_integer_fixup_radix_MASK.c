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

__attribute__((used)) static const char *FUNC2(const char *s, unsigned int *base)
{
	if (*base == 0) {
		if (s[0] == '0') {
			if (FUNC0(s[1]) == 'x' && FUNC1(s[2]))
				*base = 16;
			else
				*base = 8;
		} else
			*base = 10;
	}
	if (*base == 16 && s[0] == '0' && FUNC0(s[1]) == 'x')
		s += 2;
	return s;
}