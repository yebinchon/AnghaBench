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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

int FUNC1(int *out, const char *value)
{
	/* A missing value means true */
	if (value == NULL ||
		!FUNC0(value, "true") ||
		!FUNC0(value, "yes") ||
		!FUNC0(value, "on")) {
		*out = 1;
		return 0;
	}
	if (!FUNC0(value, "false") ||
		!FUNC0(value, "no") ||
		!FUNC0(value, "off") ||
		value[0] == '\0') {
		*out = 0;
		return 0;
	}

	return -1;
}