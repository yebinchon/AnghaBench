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
 int SKIP ; 
 int UPDATE ; 
 int VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(int *options, int *count, int argc, char *argv[])
{
	int i;

	for (i = 1; i < argc; ++i) {
		if (argv[i][0] != '-')
			break;
		else if (!FUNC2(argv[i], "--verbose") || !FUNC2(argv[i], "-v"))
			*options |= VERBOSE;
		else if (!FUNC2(argv[i], "--dry-run") || !FUNC2(argv[i], "-n"))
			*options |= SKIP;
		else if (!FUNC2(argv[i], "--update") || !FUNC2(argv[i], "-u"))
			*options |= UPDATE;
		else if (!FUNC2(argv[i], "-h")) {
			FUNC1();
			break;
		} else if (!FUNC2(argv[i], "--")) {
			i++;
			break;
		} else {
			FUNC0(stderr, "Unsupported option %s.\n", argv[i]);
			FUNC1();
		}
	}

	if (argc <= i)
		FUNC1();

	*count = i;
}