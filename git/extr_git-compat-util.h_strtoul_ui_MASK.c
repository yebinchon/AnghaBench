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
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,char) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static inline int FUNC2(char const *s, int base, unsigned int *result)
{
	unsigned long ul;
	char *p;

	errno = 0;
	/* negative values would be accepted by strtoul */
	if (FUNC0(s, '-'))
		return -1;
	ul = FUNC1(s, &p, base);
	if (errno || *p || p == s || (unsigned int) ul != ul)
		return -1;
	*result = ul;
	return 0;
}