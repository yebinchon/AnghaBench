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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 

void FUNC5(const char *prefix,
		     const char *arg,
		     int diagnose_misspelt_rev)
{
	if (*arg == '-')
		FUNC2(FUNC0("option '%s' must come before non-option arguments"), arg);
	if (FUNC4(arg) || FUNC1(prefix, arg))
		return;
	FUNC3(the_repository, prefix, arg, diagnose_misspelt_rev);
}