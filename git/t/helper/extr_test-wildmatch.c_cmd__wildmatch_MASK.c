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
 int WM_CASEFOLD ; 
 int WM_PATHNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 

int FUNC4(int argc, const char **argv)
{
	int i;
	for (i = 2; i < argc; i++) {
		if (argv[i][0] == '/')
			FUNC0("Forward slash is not allowed at the beginning of the\n"
			    "pattern because Windows does not like it. Use `XXX/' instead.");
		else if (!FUNC2(argv[i], "XXX/", 4))
			argv[i] += 3;
	}
	if (!FUNC1(argv[1], "wildmatch"))
		return !!FUNC3(argv[3], argv[2], WM_PATHNAME);
	else if (!FUNC1(argv[1], "iwildmatch"))
		return !!FUNC3(argv[3], argv[2], WM_PATHNAME | WM_CASEFOLD);
	else if (!FUNC1(argv[1], "pathmatch"))
		return !!FUNC3(argv[3], argv[2], 0);
	else if (!FUNC1(argv[1], "ipathmatch"))
		return !!FUNC3(argv[3], argv[2], WM_CASEFOLD);
	else
		return 1;
}