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
struct option {struct diff_options* value; } ;
struct diff_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (struct diff_options*,char const*) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
			      const char *arg, int unset)
{
	struct diff_options *options = opt->value;

	FUNC0(unset);
	if (!arg)
		arg = "log";
	if (FUNC3(options, arg))
		return FUNC2(FUNC1("failed to parse --submodule option parameter: '%s'"),
			     arg);
	return 0;
}