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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const char *s)
{
	const char *nuline = s;

	while ((nuline = FUNC1(s, '\n')) != NULL) {
		if (nuline != s)
			FUNC0(s, nuline - s);
		FUNC0("\r\n", 2);
		s = nuline + 1;
	}
	if (*s != '\0')
		FUNC0(s, FUNC2(s));

	return 0;
}