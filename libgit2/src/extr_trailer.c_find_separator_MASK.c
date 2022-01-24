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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char const) ; 

__attribute__((used)) static bool FUNC2(size_t *out, const char *line, const char *separators)
{
	int whitespace_found = 0;
	const char *c;
	for (c = line; *c; c++) {
		if (FUNC1(separators, *c)) {
			*out = c - line;
			return true;
		}

		if (!whitespace_found && (FUNC0(*c) || *c == '-'))
			continue;
		if (c != line && (*c == ' ' || *c == '\t')) {
			whitespace_found = 1;
			continue;
		}
		break;
	}
	return false;
}