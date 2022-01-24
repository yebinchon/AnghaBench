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
struct option {char* long_name; char* short_name; } ;

/* Variables and functions */
 int FUNC0 (char*,char*,char const*,...) ; 

int FUNC1(const struct option *opt, const char *reason)
{
	if (opt->long_name) {
		if (opt->short_name)
			return FUNC0("BUG: switch '%c' (--%s) %s",
				     opt->short_name, opt->long_name, reason);
		return FUNC0("BUG: option '%s' %s", opt->long_name, reason);
	}
	return FUNC0("BUG: switch '%c' %s", opt->short_name, reason);
}