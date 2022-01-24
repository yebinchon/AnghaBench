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
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 scalar_t__ FUNC0 (int*,char const*) ; 
 scalar_t__ FUNC1 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC3(int *out, const char *value)
{
	if (FUNC0(out, value) == 0)
		return 0;

	if (FUNC1(out, value) == 0) {
		*out = !!(*out);
		return 0;
	}

	FUNC2(GIT_ERROR_CONFIG, "failed to parse '%s' as a boolean value", value);
	return -1;
}