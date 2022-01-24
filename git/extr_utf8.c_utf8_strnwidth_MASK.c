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
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const**,int /*<<< orphan*/ *) ; 

int FUNC3(const char *string, int len, int skip_ansi)
{
	int width = 0;
	const char *orig = string;

	if (len == -1)
		len = FUNC1(string);
	while (string && string < orig + len) {
		int skip;
		while (skip_ansi &&
		       (skip = FUNC0(string)) != 0)
			string += skip;
		width += FUNC2(&string, NULL);
	}
	return string ? width : len;
}