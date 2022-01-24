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
 int FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

int FUNC2(
	const char *one,
	const char *two,
	const char *old_or_new,
	bool two_null)
{
	if (!one || !two)
		return 0;

	if (two_null && FUNC1(two, "/dev/null") != 0)
		return FUNC0("expected %s path of '/dev/null'", old_or_new);

	else if (!two_null && FUNC1(one, two) != 0)
		return FUNC0("mismatched %s path names", old_or_new);

	return 0;
}