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
struct reg_flag {char* name; int flag; } ;
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct reg_flag* reg_flags ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(int argc, const char **argv)
{
	const char *pat;
	const char *str;
	int flags = 0;
	regex_t r;
	regmatch_t m[1];

	if (argc == 2 && !FUNC4(argv[1], "--bug"))
		return FUNC5();
	else if (argc < 3)
		FUNC6("test-tool regex --bug\n"
		      "test-tool regex <pattern> <string> [<options>]");

	argv++;
	pat = *argv++;
	str = *argv++;
	while (*argv) {
		struct reg_flag *rf;
		for (rf = reg_flags; rf->name; rf++)
			if (!FUNC4(*argv, rf->name)) {
				flags |= rf->flag;
				break;
			}
		if (!rf->name)
			FUNC0("do not recognize %s", *argv);
		argv++;
	}
	FUNC1();

	if (FUNC2(&r, pat, flags))
		FUNC0("failed regcomp() for pattern '%s'", pat);
	if (FUNC3(&r, str, 1, m, 0))
		return 1;

	return 0;
}