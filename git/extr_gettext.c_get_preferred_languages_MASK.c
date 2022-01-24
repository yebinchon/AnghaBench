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
 int /*<<< orphan*/  LC_MESSAGES ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

const char *FUNC3(void)
{
	const char *retval;

	retval = FUNC0("LANGUAGE");
	if (retval && *retval)
		return retval;

#ifndef NO_GETTEXT
	retval = FUNC1(LC_MESSAGES, NULL);
	if (retval && *retval &&
		FUNC2(retval, "C") &&
		FUNC2(retval, "POSIX"))
		return retval;
#endif

	return NULL;
}