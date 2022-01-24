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
struct option {char* value; int /*<<< orphan*/  long_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
			 const char *arg, int unset)
{
	char *value = opt->value;

	FUNC0(unset);
	if (arg[1])
		return FUNC2(FUNC1("%s expects a character, got '%s'"),
			     opt->long_name, arg);
	*value = arg[0];
	return 0;
}