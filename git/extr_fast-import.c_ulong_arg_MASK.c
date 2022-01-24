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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 unsigned long FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC3(const char *option, const char *arg)
{
	char *endptr;
	unsigned long rv = FUNC2(arg, &endptr, 0);
	if (FUNC1(arg, '-') || endptr == arg || *endptr)
		FUNC0("%s: argument must be a non-negative integer", option);
	return rv;
}