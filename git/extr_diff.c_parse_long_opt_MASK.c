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
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const**) ; 

int FUNC2(const char *opt, const char **argv,
		   const char **optarg)
{
	const char *arg = argv[0];
	if (!FUNC1(arg, "--", &arg))
		return 0;
	if (!FUNC1(arg, opt, &arg))
		return 0;
	if (*arg == '=') { /* stuck form: --option=value */
		*optarg = arg + 1;
		return 1;
	}
	if (*arg != '\0')
		return 0;
	/* separate form: --option value */
	if (!argv[1])
		FUNC0("Option '--%s' requires a value", opt);
	*optarg = argv[1];
	return 2;
}