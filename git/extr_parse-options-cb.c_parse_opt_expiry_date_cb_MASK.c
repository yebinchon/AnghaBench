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
typedef  int /*<<< orphan*/  timestamp_t ;
struct option {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

int FUNC3(const struct option *opt, const char *arg,
			     int unset)
{
	if (unset)
		arg = "never";
	if (FUNC2(arg, (timestamp_t *)opt->value))
		FUNC1(FUNC0("malformed expiration date '%s'"), arg);
	return 0;
}