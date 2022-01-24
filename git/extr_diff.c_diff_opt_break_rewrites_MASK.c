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
struct option {int* value; int /*<<< orphan*/  long_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const**) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
				   const char *arg, int unset)
{
	int *break_opt = opt->value;
	int opt1, opt2;

	FUNC0(unset);
	if (!arg)
		arg = "";
	opt1 = FUNC3(&arg);
	if (*arg == 0)
		opt2 = 0;
	else if (*arg != '/')
		return FUNC2(FUNC1("%s expects <n>/<m> form"), opt->long_name);
	else {
		arg++;
		opt2 = FUNC3(&arg);
	}
	if (*arg != 0)
		return FUNC2(FUNC1("%s expects <n>/<m> form"), opt->long_name);
	*break_opt = opt1 | (opt2 << 16);
	return 0;
}