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
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char const*) ; 

char *FUNC2(const char *str, int from, int to) {
	char *s = FUNC1(str), *p = s;

	for ( ; (p = FUNC0(p, from)) != NULL; p++)
		*p = to;
	return s;
}